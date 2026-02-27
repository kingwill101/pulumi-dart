import 'package:pulumi/pulumi.dart' as pulumi;
import '../hosting_custom_domain_cert/hosting_custom_domain_cert.dart';
import '../hosting_custom_domain_issue/hosting_custom_domain_issue.dart';
import '../hosting_custom_domain_required_dns_update/hosting_custom_domain_required_dns_update.dart';
import 'hosting_custom_domain_args.dart';

/// Manages Custom Domains for Firebase Hosting. Custom Domains link your
/// domain names with Firebase Hosting sites, allowing Hosting to serve content
/// on those domain names.
///
/// To get more information about CustomDomain, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/projects.sites.customDomains)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Customdomain Basic
///
///
///
/// ### Firebasehosting Customdomain Full
///
///
///
/// ### Firebasehosting Customdomain Cloud Run
///
///
///
///
/// ## Import
///
/// CustomDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/sites/{{site_id}}/customDomains/{{custom_domain}}`
///
/// * `sites/{{site_id}}/customDomains/{{custom_domain}}`
///
/// * `{{project}}/{{site_id}}/{{custom_domain}}`
///
/// * `{{site_id}}/{{custom_domain}}`
///
/// When using the `pulumi import` command, CustomDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default projects/{{project}}/sites/{{site_id}}/customDomains/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default sites/{{site_id}}/customDomains/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default {{project}}/{{site_id}}/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default {{site_id}}/{{custom_domain}}
/// ```
class HostingCustomDomain extends pulumi.CustomResource {
  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name. Spark plan `CustomDomain`s only have access to the
  /// `GROUPED` cert type, while Blaze plan can select any option.
  /// Possible values are: `GROUPED`, `PROJECT_GROUPED`, `DEDICATED`.
  late final pulumi.Output<String> certPreference;

  /// The SSL certificate Hosting has for this `CustomDomain`'s domain name.
  /// For new `CustomDomain`s, this often represents Hosting's intent to create
  /// a certificate, rather than an actual cert. Check the `state` field for
  /// more.
  /// Structure is documented below.
  late final pulumi.Output<List<HostingCustomDomainCert>> certs;

  /// The `CustomDomain`'s create time.
  late final pulumi.Output<String> createTime;

  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  late final pulumi.Output<String> customDomain;

  /// The time the `CustomDomain` was deleted; null for `CustomDomains` that
  /// haven't been deleted. Deleted `CustomDomains` persist for approximately 30
  /// days, after which time Hosting removes them completely.
  late final pulumi.Output<String> deleteTime;

  /// A string that represents the current state of the `CustomDomain` and
  /// allows you to confirm its initial state in requests that would modify it.
  late final pulumi.Output<String> etag;

  /// The minimum time before a soft-deleted `CustomDomain` is completely removed
  /// from Hosting; null for `CustomDomains` that haven't been deleted.
  late final pulumi.Output<String> expireTime;

  /// The host state of your domain name. Host state is determined by checking each
  /// IP address associated with your domain name to see if it's serving
  /// Hosting content.
  /// HOST_UNHOSTED:
  /// Your `CustomDomain`'s domain name isn't associated with any IP addresses.
  /// HOST_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's IP addresses resulted in errors. See
  /// your `CustomDomain`'s `issues` field for more details.
  /// HOST_MISMATCH:
  /// Your `CustomDomain`'s domain name has IP addresses that don't ultimately
  /// resolve to Hosting.
  /// HOST_CONFLICT:
  /// Your `CustomDomain`'s domain name has IP addresses that resolve to both
  /// Hosting and other services. To ensure consistent results, remove `A` and
  /// `AAAA` records related to non-Hosting services.
  /// HOST_ACTIVE:
  /// All requests against your `CustomDomain`'s domain name are served by
  /// Hosting. If the `CustomDomain`'s `OwnershipState` is also `ACTIVE`, Hosting
  /// serves your Hosting Site's content on the domain name.
  late final pulumi.Output<String> hostState;

  /// A set of errors Hosting systems encountered when trying to establish
  /// Hosting's ability to serve secure content for your domain name. Resolve
  /// these issues to ensure your `CustomDomain` behaves properly.
  /// Structure is documented below.
  late final pulumi.Output<List<HostingCustomDomainIssue>> issues;

  /// The fully-qualified name of the `CustomDomain`.
  late final pulumi.Output<String> name;

  /// The ownership state of your domain name. Ownership is determined at a
  /// Firebase project level, and established by adding `TXT` records to your
  /// domain name's DNS records.
  /// Ownership cascades to subdomains. Granting a project ownership of `foo.com`
  /// also grants that project ownership over `bar.foo.com`, unless you add
  /// specific `TXT` records to `bar.foo.com` that grant a different project
  /// ownership.
  /// If your `CustomDomain` is in an `OwnershipState` other than
  /// `OWNERSHIP_ACTIVE` for more than 30 days and it hasn't been updated in at
  /// least 30 days, Hosting's ownership systems delete the `CustomDomain`.
  /// OWNERSHIP_MISSING:
  /// Your `CustomDomain`'s domain name has no Hosting-related ownership records;
  /// no Firebase project has permission to act on the domain name's behalf.
  /// OWNERSHIP_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's ownership records resulted in errors.
  /// See your `CustomDomain`'s `issues` field for more details.
  /// OWNERSHIP_MISMATCH:
  /// Your `CustomDomain`'s domain name is owned by another Firebase project.
  /// Remove the conflicting `TXT` records and replace them with project-specific
  /// records for your current Firebase project.
  /// OWNERSHIP_CONFLICT:
  /// Your `CustomDomain`'s domain name has conflicting `TXT` records that
  /// indicate ownership by both your current Firebase project and another
  /// project. Remove the other project's ownership records to grant the current
  /// project ownership.
  /// OWNERSHIP_PENDING:
  /// Your `CustomDomain`'s DNS records are configured correctly. Hosting will
  /// transfer ownership of your domain to this `CustomDomain` within 24 hours.
  /// OWNERSHIP_ACTIVE:
  /// Your `CustomDomain`'s domain name has `TXT` records that grant its project
  /// permission to act on its behalf.
  late final pulumi.Output<String> ownershipState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// if true, indicates that Hosting's systems are attempting to
  /// make the `CustomDomain`'s state match your preferred state. This is most
  /// frequently `true` when initially provisioning a `CustomDomain` or when creating
  /// a new SSL certificate to match an updated `cert_preference`
  late final pulumi.Output<bool> reconciling;

  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified `redirect_target`
  /// instead.
  late final pulumi.Output<String?> redirectTarget;

  /// A set of updates you should make to the domain name's DNS records to
  /// let Hosting serve secure content on its behalf.
  /// Structure is documented below.
  late final pulumi.Output<List<HostingCustomDomainRequiredDnsUpdate>>
      requiredDnsUpdates;

  /// The ID of the site in which to create this custom domain association.
  late final pulumi.Output<String> siteId;

  /// The last time the `CustomDomain` was updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<bool?> waitDnsVerification;

  HostingCustomDomain(
    String name, {
    HostingCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingCustomDomain:HostingCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certPreference = registerOutput<String>('certPreference');
    this.certs = registerOutput<List<HostingCustomDomainCert>>('certs');
    this.createTime = registerOutput<String>('createTime');
    this.customDomain = registerOutput<String>('customDomain');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.hostState = registerOutput<String>('hostState');
    this.issues = registerOutput<List<HostingCustomDomainIssue>>('issues');
    this.name = registerOutput<String>('name');
    this.ownershipState = registerOutput<String>('ownershipState');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.redirectTarget = registerOutput<String?>('redirectTarget');
    this.requiredDnsUpdates =
        registerOutput<List<HostingCustomDomainRequiredDnsUpdate>>(
            'requiredDnsUpdates');
    this.siteId = registerOutput<String>('siteId');
    this.updateTime = registerOutput<String>('updateTime');
    this.waitDnsVerification = registerOutput<bool?>('waitDnsVerification');
  }
}
