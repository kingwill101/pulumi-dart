import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_store_certificate/trust_store_certificate.dart';
import 'trust_store_workspacesweb_args.dart';

/// Resource for managing an AWS WorkSpaces Web Trust Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Multiple Certificates
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Trust Store using the `trust_store_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/trustStore:TrustStore example arn:aws:workspaces-web:us-west-2:123456789012:trustStore/trust_store-id-12345678
/// ```
class TrustStoreWorkspacesweb extends pulumi.CustomResource {
  /// List of ARNs of the web portals associated with the trust store.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// Set of certificates to include in the trust store. See Certificate below.
  late final pulumi.Output<List<TrustStoreCertificate>?> certificates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the trust store.
  late final pulumi.Output<String> trustStoreArn;

  TrustStoreWorkspacesweb(
    String name, {
    TrustStoreWorkspaceswebArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.certificates =
        registerOutput<List<TrustStoreCertificate>?>('certificates');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustStoreArn = registerOutput<String>('trustStoreArn');
  }
}
