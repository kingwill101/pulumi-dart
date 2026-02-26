import 'package:pulumi/pulumi.dart';
import 'endpoint_args3.dart';

/// Creates a new Endpoint in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Endpoint6 extends CustomResource {
  /// The create time timestamp.
  late final Output<String> createTime;

  /// User-provided description of the endpoint
  late final Output<String> description;

  /// The fully qualified URL of the endpoint's ILB Forwarding Rule.
  late final Output<String> endpointForwardingRule;

  /// Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  late final Output<String> endpointId;

  /// The IP address of the IDS Endpoint's ILB.
  late final Output<String> endpointIp;

  /// The labels of the endpoint.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The name of the endpoint.
  late final Output<String> name;

  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  late final Output<String> network;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Lowest threat severity that this endpoint will alert on.
  late final Output<String> severity;

  /// Current state of the endpoint.
  late final Output<String> state;

  /// List of threat IDs to be excepted from generating alerts.
  late final Output<List<String>> threatExceptions;

  /// Whether the endpoint should report traffic logs in addition to threat logs.
  late final Output<bool> trafficLogs;

  /// The update time timestamp.
  late final Output<String> updateTime;

  Endpoint6(
    String name, {
    EndpointArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:ids/v1:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.endpointForwardingRule =
        registerOutput<String>('endpointForwardingRule');
    this.endpointId = registerOutput<String>('endpointId');
    this.endpointIp = registerOutput<String>('endpointIp');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.severity = registerOutput<String>('severity');
    this.state = registerOutput<String>('state');
    this.threatExceptions = registerOutput<List<String>>('threatExceptions');
    this.trafficLogs = registerOutput<bool>('trafficLogs');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
