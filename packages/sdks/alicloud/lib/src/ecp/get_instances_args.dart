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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyPairName: (() {
        final guardedValue = map['keyPairName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolution: (() {
        final guardedValue = map['resolution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
