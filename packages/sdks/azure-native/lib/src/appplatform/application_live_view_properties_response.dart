// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_live_view_component_response.dart';

/// Application Live View properties payload
class ApplicationLiveViewPropertiesResponse {
  /// Component details of Application Live View
  final pulumi.Input<List<ApplicationLiveViewComponentResponse>> components;

  /// State of the Application Live View.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ApplicationLiveViewPropertiesResponse].
  /// [components] Component details of Application Live View
  /// [provisioningState] State of the Application Live View.
  ApplicationLiveViewPropertiesResponse({
    required this.components,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components':
          pulumi.Input.mapInputValue<
            List<ApplicationLiveViewComponentResponse>,
            List<Map<String, dynamic>>
          >(
            components,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationLiveViewComponentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
    };
  }

  factory ApplicationLiveViewPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationLiveViewPropertiesResponse(
      components: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApplicationLiveViewComponentResponse>(
          map['components']!,
          (value) => ApplicationLiveViewComponentResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
