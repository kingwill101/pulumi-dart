// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workgroup_configuration/workgroup_configuration.dart';

/// The set of arguments for Workgroup.
class WorkgroupArgs {
  /// Configuration block with various settings for the workgroup. Documented below.
  final Input<WorkgroupConfiguration>? configuration;

  /// Description of the workgroup.
  final Input<String>? description;

  /// Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  final Input<bool>? forceDestroy;

  /// Name of the workgroup.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  final Input<String>? state;

  /// Key-value map of resource tags for the workgroup. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  WorkgroupArgs({
    this.configuration,
    this.description,
    this.forceDestroy,
    this.name,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = Input.mapOptionalInputValue<WorkgroupConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkgroupArgs(
      configuration:
          Input.asOptionalInput<WorkgroupConfiguration>(map['configuration']),
      description: Input.asOptionalInput<String>(map['description']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
