import 'package:pulumi/pulumi.dart' hide Config;
import 'notification_endpoint_grpc_settings_response3.dart';
import 'region_notification_endpoint_args3.dart';

/// Create a NotificationEndpoint in the specified project in the given region using the parameters that are included in the request.
class RegionNotificationEndpoint3 extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  late final Output<NotificationEndpointGrpcSettingsResponse3> grpcSettings;

  /// Type of the resource. Always compute#notificationEndpoint for notification endpoints.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  RegionNotificationEndpoint3(
    String name, {
    RegionNotificationEndpointArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionNotificationEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.grpcSettings =
        registerOutput<NotificationEndpointGrpcSettingsResponse3>(
            'grpcSettings');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
