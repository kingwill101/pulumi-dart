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
  const GetBasicEndpointsArgs({
    required this.endpointGroupId,
    this.endpointId,
    this.endpointType,
    this.ids,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

