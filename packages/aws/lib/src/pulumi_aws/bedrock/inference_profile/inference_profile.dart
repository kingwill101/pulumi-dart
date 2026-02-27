import 'package:pulumi/pulumi.dart';
import '../inference_profile_model/inference_profile_model.dart';
import '../inference_profile_model_source/inference_profile_model_source.dart';
import '../inference_profile_timeouts/inference_profile_timeouts.dart';
import 'inference_profile_args.dart';

/// Resource for managing an AWS Bedrock Inference Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Inference Profile using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/inferenceProfile:InferenceProfile example inference_profile-id-12345678
/// ```
class InferenceProfile extends CustomResource {
  /// The Amazon Resource Name (ARN) of the inference profile.
  late final Output<String> arn;

  /// The time at which the inference profile was created.
  late final Output<String> createdAt;

  /// The description of the inference profile.
  late final Output<String?> description;

  /// The source of the model this inference profile will track metrics and cost for. See `model_source`.
  ///
  /// The following arguments are optional:
  late final Output<InferenceProfileModelSource?> modelSource;

  /// A list of information about each model in the inference profile. See `models`.
  late final Output<List<InferenceProfileModel>> models;

  /// The name of the inference profile.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  late final Output<String> status;

  /// Key-value mapping of resource tags for the inference profile.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<InferenceProfileTimeouts?> timeouts;

  /// The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  late final Output<String> type;

  /// The time at which the inference profile was last updated.
  late final Output<String> updatedAt;

  InferenceProfile(
    String name, {
    InferenceProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/inferenceProfile:InferenceProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.modelSource =
        registerOutput<InferenceProfileModelSource?>('modelSource');
    this.models = registerOutput<List<InferenceProfileModel>>('models');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<InferenceProfileTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
