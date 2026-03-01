// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_group_get_group_args_doc}
class GetGroupArgs {
  /// The name of this Container Group instance.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Container Group instance exists.
  final pulumi.Input<String> resourceGroupName;
  /// A list of Availability Zones in which this Container Group is located.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [GetGroupArgs].
  /// [name] The name of this Container Group instance.
  /// [resourceGroupName] The name of the Resource Group where the Container Group instance exists.
  /// [zones] A list of Availability Zones in which this Container Group is located.
  GetGroupArgs({
    required String name,
    required String resourceGroupName,
    List<String>? zones,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'zones': ?zones,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

