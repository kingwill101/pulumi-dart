// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint_grpc_settings_compute_v1.dart';

/// {@template pulumi_compute_v1_region_notification_endpoint_compute_v1_args_doc}
/// The set of arguments for RegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_notification_endpoint_compute_v1_args_doc}
class RegionNotificationEndpointComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  final pulumi.Input<NotificationEndpointGrpcSettingsComputeV1>? grpcSettings;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [RegionNotificationEndpointComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcSettings] Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  RegionNotificationEndpointComputeV1Args({
    String? description,
    NotificationEndpointGrpcSettingsComputeV1? grpcSettings,
    String? name,
    String? project,
    required String region,
    String? requestId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        grpcSettings = pulumi.Input.asOptionalInput<
            NotificationEndpointGrpcSettingsComputeV1>(grpcSettings),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final grpcSettingsValue = grpcSettings;
    if (grpcSettingsValue != null) {
      map['grpcSettings'] = pulumi.Input.mapOptionalInputValue<
          NotificationEndpointGrpcSettingsComputeV1,
          Map<String, dynamic>>(grpcSettingsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory RegionNotificationEndpointComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return RegionNotificationEndpointComputeV1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      grpcSettings: map['grpcSettings'] == null
          ? null
          : NotificationEndpointGrpcSettingsComputeV1.fromMap(
              (map['grpcSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
