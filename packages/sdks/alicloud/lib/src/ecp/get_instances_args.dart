// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecp_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_ecp_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Ecp Instances IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID Of The Image.
  final pulumi.Input<String>? imageId;
  /// The name of the instance. It must be 2 to 128 characters in length and must start with an
  /// uppercase letter or Chinese. It cannot start with http:// or https. It can contain Chinese, English, numbers,
  /// half-width colons (:), underscores (_), half-width periods (.), or dashes (-). The default value is the InstanceId of
  /// the instance.
  final pulumi.Input<String>? instanceName;
  /// Instance Type.
  final pulumi.Input<String>? instanceType;
  /// The name of the key pair of the mobile phone instance.
  final pulumi.Input<String>? keyPairName;
  /// A regex string to filter results by mobile phone name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The payment type.Valid values: `PayAsYouGo`,`Subscription`
  final pulumi.Input<String>? paymentType;
  /// The selected resolution for the cloud mobile phone instance.
  final pulumi.Input<String>? resolution;
  /// Instance status. Valid values: `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`
  /// .
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstancesArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Ecp Instances IDs.
  /// [imageId] The ID Of The Image.
  /// [instanceName] The name of the instance. It must be 2 to 128 characters in length and must start with an
  /// [instanceType] Instance Type.
  /// [keyPairName] The name of the key pair of the mobile phone instance.
  /// [nameRegex] A regex string to filter results by mobile phone name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The payment type.Valid values: `PayAsYouGo`,`Subscription`
  /// [resolution] The selected resolution for the cloud mobile phone instance.
  /// [status] Instance status. Valid values: `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`
  /// [zoneId] Optional.
  GetInstancesArgs({
    this.enableDetails,
    this.ids,
    this.imageId,
    this.instanceName,
    this.instanceType,
    this.keyPairName,
    this.nameRegex,
    this.outputFile,
    this.paymentType,
    this.resolution,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'keyPairName': ?keyPairName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'resolution': ?resolution,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      resolution: map['resolution'] == null ? null : (map['resolution'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

