// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_properties.dart';

/// {@template pulumi_cognitiveservices_rai_tool_label_args_doc}
/// The set of arguments for RaiToolLabel.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_tool_label_args_doc}
class RaiToolLabelArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;

  /// Properties of the RAI Tool Label.
  final pulumi.Input<RaiToolLabelProperties>? properties;

  /// The name of the Rai Tool Label
  final pulumi.Input<String>? raiToolConnectionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiToolLabelArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of the RAI Tool Label.
  /// [raiToolConnectionName] The name of the Rai Tool Label
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RaiToolLabelArgs({
    required this.accountName,
    this.properties,
    this.raiToolConnectionName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            RaiToolLabelProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'raiToolConnectionName': ?raiToolConnectionName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiToolLabelArgs.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RaiToolLabelProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      raiToolConnectionName: (() {
        final guardedValue = map['raiToolConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
