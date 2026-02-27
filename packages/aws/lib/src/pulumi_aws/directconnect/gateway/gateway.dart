import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';

/// Provides a Direct Connect Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the Direct Connect Gateway.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Direct Connect Gateways using the gateway `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/gateway:Gateway example abcd1234-dcba-5678-be23-cdef9876ab45
/// ```
class Gateway extends pulumi.CustomResource {
  /// The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  late final pulumi.Output<String> amazonSideAsn;

  /// The ARN of the gateway.
  late final pulumi.Output<String> arn;

  /// The name of the connection.
  late final pulumi.Output<String> name;

  /// AWS Account ID of the gateway.
  late final pulumi.Output<String> ownerAccountId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
