import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_trust_provider_attachment_args.dart';

/// Resource for managing a Verified Access Instance Trust Provider Attachment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instance Trust Provider Attachments using the `verifiedaccess_instance_id` and `verifiedaccess_trust_provider_id` separated by a forward slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment example vai-1234567890abcdef0/vatp-8012925589
/// ```
class InstanceTrustProviderAttachment extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Verified Access instance to attach the Trust Provider to.
  late final pulumi.Output<String> verifiedaccessInstanceId;

  /// The ID of the Verified Access trust provider.
  late final pulumi.Output<String> verifiedaccessTrustProviderId;

  InstanceTrustProviderAttachment(
    String name, {
    InstanceTrustProviderAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.verifiedaccessInstanceId =
        registerOutput<String>('verifiedaccessInstanceId');
    this.verifiedaccessTrustProviderId =
        registerOutput<String>('verifiedaccessTrustProviderId');
  }
}
