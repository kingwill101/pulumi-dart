// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_backend_backend_args_doc}
/// The set of arguments for Backend.
/// {@endtemplate}
/// {@macro pulumi_apigateway_backend_backend_args_doc}
class BackendArgs {
  /// The name of the Backend.
  final pulumi.Input<String> backendName;
  /// The type of the Backend. Valid values: `HTTP`, `VPC`, `FC_EVENT`, `FC_EVENT_V3`, `FC_HTTP`, `FC_HTTP_V3`, `OSS`, `MOCK`.
  final pulumi.Input<String> backendType;
  /// Whether to create an Event bus service association role.
  final pulumi.Input<bool>? createEventBridgeServiceLinkedRole;
  /// The description of the Backend.
  final pulumi.Input<String>? description;

  /// Creates a new [BackendArgs].
  /// [backendName] The name of the Backend.
  /// [backendType] The type of the Backend. Valid values: `HTTP`, `VPC`, `FC_EVENT`, `FC_EVENT_V3`, `FC_HTTP`, `FC_HTTP_V3`, `OSS`, `MOCK`.
  /// [createEventBridgeServiceLinkedRole] Whether to create an Event bus service association role.
  /// [description] The description of the Backend.
  BackendArgs({
    required pulumi.Output<String> backendName,
    required pulumi.Output<String> backendType,
    pulumi.Output<bool>? createEventBridgeServiceLinkedRole,
    pulumi.Output<String>? description,
  }) :
      backendName = pulumi.Input.asInput<String>(backendName),
      backendType = pulumi.Input.asInput<String>(backendType),
      createEventBridgeServiceLinkedRole = pulumi.Input.asOptionalInput<bool>(createEventBridgeServiceLinkedRole),
      description = pulumi.Input.asOptionalInput<String>(description);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendName': backendName,
      'backendType': backendType,
      'createEventBridgeServiceLinkedRole': ?createEventBridgeServiceLinkedRole,
      'description': ?description,
    };
  }

  factory BackendArgs.fromMap(Map<String, dynamic> map) {
    return BackendArgs(
      backendName: pulumi.Output.create<String>(map['backendName'] as String),
      backendType: pulumi.Output.create<String>(map['backendType'] as String),
      createEventBridgeServiceLinkedRole: map['createEventBridgeServiceLinkedRole'] == null ? null : pulumi.Output.create<bool>(map['createEventBridgeServiceLinkedRole'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
    );
  }
}

