// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_key_pairs_pair_instance.dart';

class GetEcsKeyPairsPair {
  /// The fingerprint of the key pair.
  final pulumi.Input<String> fingerPrint;

  /// The ID of the Key Pair.
  final pulumi.Input<String> id;

  /// A list of ECS instances that has been bound this Key Pair.
  final pulumi.Input<List<GetEcsKeyPairsPairInstance>> instances;

  /// The name of the key pair.
  final pulumi.Input<String> keyName;

  /// The name of the Key Pair.
  final pulumi.Input<String> keyPairName;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetEcsKeyPairsPair].
  /// [fingerPrint] The fingerprint of the key pair.
  /// [id] The ID of the Key Pair.
  /// [instances] A list of ECS instances that has been bound this Key Pair.
  /// [keyName] The name of the key pair.
  /// [keyPairName] The name of the Key Pair.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  GetEcsKeyPairsPair({
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
            List<GetEcsKeyPairsPairInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  GetEcsKeyPairsPairInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keyName': keyName,
      'keyPairName': keyPairName,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
    };
  }

  factory GetEcsKeyPairsPair.fromMap(Map<String, dynamic> map) {
    return GetEcsKeyPairsPair(
      fingerPrint: pulumi.Input.fromValue(map['fingerPrint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetEcsKeyPairsPairInstance>(
          map['instances']!,
          (value) => GetEcsKeyPairsPairInstance.fromMap(
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
