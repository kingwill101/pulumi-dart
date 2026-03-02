// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? imageId;
  final String? instanceName;
  final String? instanceType;
  final List<GetInstancesInstance> instances;
  final String? keyPairName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? paymentType;
  final String? resolution;
  final String? status;
  final String? zoneId;

  /// Creates a new [GetInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [imageId] Optional.
  /// [instanceName] Optional.
  /// [instanceType] Optional.
  /// [instances] Required.
  /// [keyPairName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [paymentType] Optional.
  /// [resolution] Optional.
  /// [status] Optional.
  /// [zoneId] Optional.
  GetInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.imageId,
    this.instanceName,
    this.instanceType,
    required this.instances,
    this.keyPairName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.paymentType,
    this.resolution,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'keyPairName': ?keyPairName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'resolution': ?resolution,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageId: map['imageId'] == null ? null : map['imageId']! as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName']! as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType']! as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType']! as String,
      resolution: map['resolution'] == null ? null : map['resolution']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

