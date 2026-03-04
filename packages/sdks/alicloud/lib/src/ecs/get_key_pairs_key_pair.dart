// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_key_pair_instance.dart';

class GetKeyPairsKeyPair {
  /// A finger print used to retrieve specified key pair.
  final pulumi.Input<String> fingerPrint;

  /// ID of the key pair.
  final pulumi.Input<String> id;

  /// A list of ECS instances that has been bound this key pair.
  final pulumi.Input<List<GetKeyPairsKeyPairInstance>> instances;

  /// Name of the key pair.
  final pulumi.Input<String> keyName;
  final pulumi.Input<String> keyPairName;

  /// The Id of resource group which the key pair belongs.
  final pulumi.Input<String> resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetKeyPairsKeyPair].
  /// [fingerPrint] A finger print used to retrieve specified key pair.
  /// [id] ID of the key pair.
  /// [instances] A list of ECS instances that has been bound this key pair.
  /// [keyName] Name of the key pair.
  /// [keyPairName] Required.
  /// [resourceGroupId] The Id of resource group which the key pair belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetKeyPairsKeyPair({
    required this.fingerPrint,
    required this.id,
    required this.instances,
    required this.keyName,
    required this.keyPairName,
    required this.resourceGroupId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerPrint': fingerPrint,
      'id': id,
      'instances':
          pulumi.Input.mapInputValue<
            List<GetKeyPairsKeyPairInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  GetKeyPairsKeyPairInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keyName': keyName,
      'keyPairName': keyPairName,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
    };
  }

  factory GetKeyPairsKeyPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsKeyPair(
      fingerPrint: pulumi.Input.fromValue(map['fingerPrint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKeyPairsKeyPairInstance>(
          map['instances']!,
          (value) => GetKeyPairsKeyPairInstance.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyPairName: pulumi.Input.fromValue(map['keyPairName'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
