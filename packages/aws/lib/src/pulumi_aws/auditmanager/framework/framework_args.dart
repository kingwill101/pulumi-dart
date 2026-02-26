// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../framework_control_set/framework_control_set.dart';

/// The set of arguments for Framework.
class FrameworkArgs {
  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  final Input<String>? complianceType;

  /// Configuration block(s) for the control sets that are associated with the framework. See <span pulumi-lang-nodejs="`controlSets`" pulumi-lang-dotnet="`ControlSets`" pulumi-lang-go="`controlSets`" pulumi-lang-python="`control_sets`" pulumi-lang-yaml="`controlSets`" pulumi-lang-java="`controlSets`">`control_sets`</span> Block below for details.
  ///
  /// The following arguments are optional:
  final Input<List<FrameworkControlSet>>? controlSets;

  /// Description of the framework.
  final Input<String>? description;

  /// Name of the framework.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the framework. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FrameworkArgs({
    this.complianceType,
    this.controlSets,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complianceTypeValue = complianceType;
    if (complianceTypeValue != null) {
      map['complianceType'] = complianceTypeValue;
    }
    final controlSetsValue = controlSets;
    if (controlSetsValue != null) {
      map['controlSets'] = Input.mapOptionalInputValue<
              List<FrameworkControlSet>, List<Map<String, dynamic>>>(
          controlSetsValue,
          (value) =>
              Input.encodeList<FrameworkControlSet, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
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
    return map;
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      complianceType: Input.asOptionalInput<String>(map['complianceType']),
      controlSets:
          Input.asOptionalInput<List<FrameworkControlSet>>(map['controlSets']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
