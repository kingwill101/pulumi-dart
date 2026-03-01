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
    required pulumi.Output<String> accountName,
    pulumi.Output<RaiBlocklistProperties>? properties,
    pulumi.Output<String>? raiBlocklistName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      properties = pulumi.Input.asOptionalInput<RaiBlocklistProperties>(properties),
      raiBlocklistName = pulumi.Input.asOptionalInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiBlocklistProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'raiBlocklistName': ?raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<RaiBlocklistProperties>(RaiBlocklistProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      raiBlocklistName: map['raiBlocklistName'] == null ? null : pulumi.Output.create<String>(map['raiBlocklistName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

