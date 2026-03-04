// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_pair_instance.dart';

class GetKeyPairsPair {
  /// A finger print used to retrieve specified key pair.
  final pulumi.Input<String> fingerPrint;

  /// ID of the key pair.
  final pulumi.Input<String> id;

  /// A list of ECS instances that has been bound this key pair.
  final pulumi.Input<List<GetKeyPairsPairInstance>> instances;

  /// Name of the key pair.
  final pulumi.Input<String> keyName;
  final pulumi.Input<String> keyPairName;

  /// The Id of resource group which the key pair belongs.
  final pulumi.Input<String> resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetKeyPairsPair].
  /// [fingerPrint] A finger print used to retrieve specified key pair.
  /// [id] ID of the key pair.
  /// [instances] A list of ECS instances that has been bound this key pair.
  /// [keyName] Name of the key pair.
  /// [keyPairName] Required.
  /// [resourceGroupId] The Id of resource group which the key pair belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetKeyPairsPair({
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
            List<GetKeyPairsPairInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  GetKeyPairsPairInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keyName': keyName,
      'keyPairName': keyPairName,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
    };
  }

  factory GetKeyPairsPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsPair(
      fingerPrint: pulumi.Input.fromValue(map['fingerPrint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKeyPairsPairInstance>(
          map['instances']!,
          (value) => GetKeyPairsPairInstance.fromMap(
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
