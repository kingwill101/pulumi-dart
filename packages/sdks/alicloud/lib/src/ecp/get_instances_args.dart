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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resolution,
    pulumi.Output<String>? status,
    pulumi.Output<String>? zoneId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resolution = pulumi.Input.asOptionalInput<String>(resolution),
      status = pulumi.Input.asOptionalInput<String>(status),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resolution: map['resolution'] == null ? null : pulumi.Output.create<String>(map['resolution'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

