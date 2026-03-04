// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_live_view_instance_response.dart';
import 'application_live_view_resource_requests_response.dart';

/// Application Live View properties payload
class ApplicationLiveViewComponentResponse {
  /// Collection of instances belong to Application Live View.
  final pulumi.Input<List<ApplicationLiveViewInstanceResponse>> instances;

  /// Name of the component.
  final pulumi.Input<dynamic> name;

  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<ApplicationLiveViewResourceRequestsResponse>
  resourceRequests;

  /// Creates a new [ApplicationLiveViewComponentResponse].
  /// [instances] Collection of instances belong to Application Live View.
  /// [name] Name of the component.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  ApplicationLiveViewComponentResponse({
    required this.instances,
    required this.name,
    required this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances':
          pulumi.Input.mapInputValue<
            List<ApplicationLiveViewInstanceResponse>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationLiveViewInstanceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'resourceRequests':
          pulumi.Input.mapInputValue<
            ApplicationLiveViewResourceRequestsResponse,
            Map<String, dynamic>
          >(resourceRequests, (value) => value.toMap()),
    };
  }

  factory ApplicationLiveViewComponentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationLiveViewComponentResponse(
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApplicationLiveViewInstanceResponse>(
          map['instances']!,
          (value) => ApplicationLiveViewInstanceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name']),
      resourceRequests: pulumi.Input.fromValue(
        ApplicationLiveViewResourceRequestsResponse.fromMap(
          (map['resourceRequests']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
