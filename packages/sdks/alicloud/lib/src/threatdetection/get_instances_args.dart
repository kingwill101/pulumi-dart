// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The first ID of the resource
  final pulumi.Input<String>? instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The renewal status of the specified instance. Valid values: `AutoRenewal`, `ManualRenewal`, `NotRenewal`.
  final pulumi.Input<String>? renewStatus;

  /// Creates a new [GetInstancesArgs].
  /// [ids] A list of Instance IDs.
  /// [instanceId] The first ID of the resource
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [renewStatus] The renewal status of the specified instance. Valid values: `AutoRenewal`, `ManualRenewal`, `NotRenewal`.
  GetInstancesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? renewStatus,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      renewStatus = pulumi.Input.asOptionalInput<String>(renewStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'renewStatus': ?renewStatus,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      renewStatus: map['renewStatus'] == null ? null : pulumi.Output.create<String>(map['renewStatus'] as String),
    );
  }
}

