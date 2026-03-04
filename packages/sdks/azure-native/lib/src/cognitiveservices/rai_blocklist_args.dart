// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_properties.dart';

/// {@template pulumi_cognitiveservices_rai_blocklist_args_doc}
/// The set of arguments for RaiBlocklist.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_blocklist_args_doc}
class RaiBlocklistArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;

  /// Properties of Cognitive Services RaiBlocklist.
  final pulumi.Input<RaiBlocklistProperties>? properties;

  /// The name of the RaiBlocklist associated with the Cognitive Services Account
  final pulumi.Input<String>? raiBlocklistName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiBlocklistArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of Cognitive Services RaiBlocklist.
  /// [raiBlocklistName] The name of the RaiBlocklist associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RaiBlocklistArgs({
    required this.accountName,
    this.properties,
    this.raiBlocklistName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            RaiBlocklistProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'raiBlocklistName': ?raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RaiBlocklistProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      raiBlocklistName: (() {
        final guardedValue = map['raiBlocklistName'];
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
