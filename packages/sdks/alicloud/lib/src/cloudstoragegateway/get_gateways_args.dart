// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_gateways_get_gateways_args_doc}
/// Arguments for getGateways.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_gateways_get_gateways_args_doc}
class GetGatewaysArgs {
  /// A list of Gateway IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Gateway name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// gateway status.
  final pulumi.Input<String>? status;
  /// storage bundle id.
  final pulumi.Input<String> storageBundleId;

  /// Creates a new [GetGatewaysArgs].
  /// [ids] A list of Gateway IDs.
  /// [nameRegex] A regex string to filter results by Gateway name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] gateway status.
  /// [storageBundleId] storage bundle id.
  GetGatewaysArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
    required pulumi.Output<String> storageBundleId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageBundleId = pulumi.Input.asInput<String>(storageBundleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'storageBundleId': storageBundleId,
    };
  }

  factory GetGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaysArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageBundleId: pulumi.Output.create<String>(map['storageBundleId'] as String),
    );
  }
}

