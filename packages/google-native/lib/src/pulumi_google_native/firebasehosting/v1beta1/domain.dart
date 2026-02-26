import 'package:pulumi/pulumi.dart';
import 'domain_args.dart';
import 'domain_provisioning_response.dart';
import 'domain_redirect_response.dart';

/// Creates a domain mapping on the specified site.
/// Auto-naming is currently not supported for this resource.
class Domain extends CustomResource {
  /// The domain name of the association.
  late final Output<String> domainName;

  /// If set, the domain should redirect with the provided parameters.
  late final Output<DomainRedirectResponse> domainRedirect;
  late final Output<String> project;

  /// Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  late final Output<DomainProvisioningResponse> provisioning;

  /// The site name of the association.
  late final Output<String> site;
  late final Output<String> siteId;

  /// Additional status of the domain association.
  late final Output<String> status;

  /// The time at which the domain was last updated.
  late final Output<String> updateTime;

  Domain(
    String name, {
    DomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.domainRedirect =
        registerOutput<DomainRedirectResponse>('domainRedirect');
    this.project = registerOutput<String>('project');
    this.provisioning =
        registerOutput<DomainProvisioningResponse>('provisioning');
    this.site = registerOutput<String>('site');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
