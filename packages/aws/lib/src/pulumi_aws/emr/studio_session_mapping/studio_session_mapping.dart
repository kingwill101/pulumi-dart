import 'package:pulumi/pulumi.dart';
import 'studio_session_mapping_args.dart';

/// Provides an Elastic MapReduce Studio Session Mapping.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR studio session mappings using `studio-id:identity-type:identity-id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/studioSessionMapping:StudioSessionMapping example es-xxxxx:USER:xxxxx-xxx-xxx
/// ```
class StudioSessionMapping extends CustomResource {
  /// The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  late final Output<String> identityId;

  /// The name of the user or group from the Amazon Web Services SSO Identity Store.
  late final Output<String> identityName;

  /// Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  late final Output<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  late final Output<String> sessionPolicyArn;

  /// The ID of the Amazon EMR Studio to which the user or group will be mapped.
  late final Output<String> studioId;

  StudioSessionMapping(
    String name, {
    StudioSessionMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/studioSessionMapping:StudioSessionMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identityId = registerOutput<String>('identityId');
    this.identityName = registerOutput<String>('identityName');
    this.identityType = registerOutput<String>('identityType');
    this.region = registerOutput<String>('region');
    this.sessionPolicyArn = registerOutput<String>('sessionPolicyArn');
    this.studioId = registerOutput<String>('studioId');
  }
}
