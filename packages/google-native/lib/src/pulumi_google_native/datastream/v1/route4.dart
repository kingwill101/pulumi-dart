import 'package:pulumi/pulumi.dart';
import 'route_args4.dart';

/// Use this method to create a route for a private connectivity configuration in a project and location.
/// Auto-naming is currently not supported for this resource.
class Route4 extends CustomResource {
  /// The create time of the resource.
  late final Output<String> createTime;

  /// Destination address for connection
  late final Output<String> destinationAddress;

  /// Destination port for connection
  late final Output<int> destinationPort;

  /// Display name.
  late final Output<String> displayName;

  /// Labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource's name.
  late final Output<String> name;
  late final Output<String> privateConnectionId;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Required. The Route identifier.
  late final Output<String> routeId;

  /// The update time of the resource.
  late final Output<String> updateTime;

  Route4(
    String name, {
    RouteArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1:Route',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.destinationAddress = Output.createUnknown<String>();
    this.destinationPort = Output.createUnknown<int>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.privateConnectionId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.routeId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
