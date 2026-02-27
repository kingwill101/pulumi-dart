// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../inference_profile_model_source/inference_profile_model_source.dart';
import '../inference_profile_timeouts/inference_profile_timeouts.dart';

/// The set of arguments for InferenceProfile.
class InferenceProfileArgs {
  /// The description of the inference profile.
  final pulumi.Input<String>? description;

  /// The source of the model this inference profile will track metrics and cost for. See `model_source`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<InferenceProfileModelSource>? modelSource;

  /// The name of the inference profile.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags for the inference profile.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<InferenceProfileTimeouts>? timeouts;

  InferenceProfileArgs({
    this.description,
    this.modelSource,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final modelSourceValue = modelSource;
    if (modelSourceValue != null) {
      map['modelSource'] = pulumi.Input.mapOptionalInputValue<
          InferenceProfileModelSource,
          Map<String, dynamic>>(modelSourceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          InferenceProfileTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InferenceProfileArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      modelSource: pulumi.Input.asOptionalInput<InferenceProfileModelSource>(
          map['modelSource']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<InferenceProfileTimeouts>(
          map['timeouts']),
    );
  }
}
