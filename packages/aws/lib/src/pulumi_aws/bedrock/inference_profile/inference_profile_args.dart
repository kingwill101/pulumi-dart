// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../inference_profile_model_source/inference_profile_model_source.dart';
import '../inference_profile_timeouts/inference_profile_timeouts.dart';

/// The set of arguments for InferenceProfile.
class InferenceProfileArgs {
  /// The description of the inference profile.
  final Input<String>? description;

  /// The source of the model this inference profile will track metrics and cost for. See <span pulumi-lang-nodejs="`modelSource`" pulumi-lang-dotnet="`ModelSource`" pulumi-lang-go="`modelSource`" pulumi-lang-python="`model_source`" pulumi-lang-yaml="`modelSource`" pulumi-lang-java="`modelSource`">`model_source`</span>.
  ///
  /// The following arguments are optional:
  final Input<InferenceProfileModelSource>? modelSource;

  /// The name of the inference profile.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags for the inference profile.
  final Input<Map<String, String>>? tags;
  final Input<InferenceProfileTimeouts>? timeouts;

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
      map['modelSource'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<InferenceProfileTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InferenceProfileArgs(
      description: Input.asOptionalInput<String>(map['description']),
      modelSource: Input.asOptionalInput<InferenceProfileModelSource>(
          map['modelSource']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<InferenceProfileTimeouts>(map['timeouts']),
    );
  }
}
