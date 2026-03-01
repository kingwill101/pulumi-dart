// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_key_pair_instance.dart';

class GetKeyPairsKeyPair {
  /// A finger print used to retrieve specified key pair.
  final String fingerPrint;
  /// ID of the key pair.
  final String id;
  /// A list of ECS instances that has been bound this key pair.
  final List<GetKeyPairsKeyPairInstance> instances;
  /// Name of the key pair.
  final String keyName;
  final String keyPairName;
  /// The Id of resource group which the key pair belongs.
  final String resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

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
      'instances': pulumi.Input.encodeList<GetKeyPairsKeyPairInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'keyName': keyName,
      'keyPairName': keyPairName,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
    };
  }

  factory GetKeyPairsKeyPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsKeyPair(
      fingerPrint: map['fingerPrint'] as String,
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetKeyPairsKeyPairInstance>(map['instances'], (value) => GetKeyPairsKeyPairInstance.fromMap((value as Map).cast<String, dynamic>())),
      keyName: map['keyName'] as String,
      keyPairName: map['keyPairName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

