import 'package:pulumi/pulumi.dart';
import '../trust_store_certificate/trust_store_certificate.dart';
import 'trust_store_args3.dart';

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
class TrustStore3 extends CustomResource {
  /// List of ARNs of the web portals associated with the trust store.
  late final Output<List<String>> associatedPortalArns;

  /// Set of certificates to include in the trust store. See Certificate below.
  late final Output<List<TrustStoreCertificate>?> certificates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the trust store.
  late final Output<String> trustStoreArn;

  TrustStore3(
    String name, {
    TrustStoreArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/trustStore:TrustStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
