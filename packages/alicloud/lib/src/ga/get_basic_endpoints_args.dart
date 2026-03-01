// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_basic_endpoints_get_basic_endpoints_args_doc}
/// Arguments for getBasicEndpoints.
/// {@endtemplate}
/// {@macro pulumi_ga_get_basic_endpoints_get_basic_endpoints_args_doc}
class GetBasicEndpointsArgs {
  /// The ID of the Basic Endpoint Group.
  final pulumi.Input<String> endpointGroupId;
  /// The ID of the Basic Endpoint.
  final pulumi.Input<String>? endpointId;
  /// The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  final pulumi.Input<String>? endpointType;
  /// A list of Global Accelerator Basic Endpoints IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the Basic Endpoint.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Global Accelerator Basic Endpoints name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Global Accelerator Basic Endpoint. Valid Value: `init`, `active`, `updating`, `binding`, `unbinding`, `deleting`, `bound`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBasicEndpointsArgs].
  /// [endpointGroupId] The ID of the Basic Endpoint Group.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [endpointType] The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  /// [ids] A list of Global Accelerator Basic Endpoints IDs.
  /// [name] The name of the Basic Endpoint.
  /// [nameRegex] A regex string to filter results by Global Accelerator Basic Endpoints name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Global Accelerator Basic Endpoint. Valid Value: `init`, `active`, `updating`, `binding`, `unbinding`, `deleting`, `bound`.
  GetBasicEndpointsArgs({
    required String endpointGroupId,
    String? endpointId,
    String? endpointType,
    List<String>? ids,
    String? name,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      endpointGroupId = pulumi.Input.asInput<String>(endpointGroupId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
      'endpointId': ?endpointId,
      'endpointType': ?endpointType,
      'ids': ?ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBasicEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetBasicEndpointsArgs(
      endpointGroupId: map['endpointGroupId'] as String,
      endpointId: map['endpointId'] == null ? null : map['endpointId'] as String,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

