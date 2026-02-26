import 'package:pulumi/pulumi.dart';
import 'certificate_response2.dart';
import 'custom_domain_args.dart';
import 'dns_updates_response.dart';
import 'status_response17.dart';

/// Creates a `CustomDomain`.
/// Auto-naming is currently not supported for this resource.
class CustomDomain2 extends CustomResource {
  /// Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  late final Output<Map<String, String>> annotations;

  /// The SSL certificate Hosting has for this custom domain's domain name. For new custom domains, this often represents Hosting's intent to create a certificate, rather than an actual cert. Check the `state` field for more.
  late final Output<CertificateResponse2> cert;

  /// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  late final Output<String> certPreference;

  /// The custom domain's create time.
  late final Output<String> createTime;

  /// Required. The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  late final Output<String> customDomainId;

  /// The time the `CustomDomain` was deleted; null for custom domains that haven't been deleted. Deleted custom domains persist for approximately 30 days, after which time Hosting removes them completely. To restore a deleted custom domain, make an `UndeleteCustomDomain` request.
  late final Output<String> deleteTime;

  /// A string that represents the current state of the `CustomDomain` and allows you to confirm its initial state in requests that would modify it. Use the tag to ensure consistency when making `UpdateCustomDomain`, `DeleteCustomDomain`, and `UndeleteCustomDomain` requests.
  late final Output<String> etag;

  /// The minimum time before a soft-deleted `CustomDomain` is completely removed from Hosting; null for custom domains that haven't been deleted.
  late final Output<String> expireTime;

  /// The `HostState` of the domain name this `CustomDomain` refers to.
  late final Output<String> hostState;

  /// A set of errors Hosting systems encountered when trying to establish Hosting's ability to serve secure content for your domain name. Resolve these issues to ensure your `CustomDomain` behaves properly.
  late final Output<List<StatusResponse17>> issues;

  /// Labels used for extra metadata and/or filtering.
  late final Output<Map<String, String>> labels;

  /// The fully-qualified name of the `CustomDomain`.
  late final Output<String> name;

  /// The `OwnershipState` of the domain name this `CustomDomain` refers to.
  late final Output<String> ownershipState;
  late final Output<String> project;

  /// A field that, if true, indicates that Hosting's systems are attmepting to make the custom domain's state match your preferred state. This is most frequently `true` when initially provisioning a `CustomDomain` after a `CreateCustomDomain` request or when creating a new SSL certificate to match an updated `cert_preference` after an `UpdateCustomDomain` request.
  late final Output<bool> reconciling;

  /// A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  late final Output<String> redirectTarget;

  /// A set of updates you should make to the domain name's DNS records to let Hosting serve secure content on its behalf.
  late final Output<DnsUpdatesResponse> requiredDnsUpdates;
  late final Output<String> siteId;

  /// The last time the `CustomDomain` was updated.
  late final Output<String> updateTime;

  CustomDomain2(
    String name, {
    CustomDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:CustomDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.cert = Output.createUnknown<CertificateResponse2>();
    this.certPreference = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.customDomainId = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.hostState = Output.createUnknown<String>();
    this.issues = Output.createUnknown<List<StatusResponse17>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.ownershipState = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.redirectTarget = Output.createUnknown<String>();
    this.requiredDnsUpdates = Output.createUnknown<DnsUpdatesResponse>();
    this.siteId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
