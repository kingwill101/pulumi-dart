// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_endpoint_details.dart';
import 'multi_region_endpoint_route.dart';
import 'multi_region_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering MultiRegionEndpoint resources.
class MultiRegionEndpointState {
  /// ARN of the multi-region endpoint.
  final pulumi.Input<String?>? arn;
  /// Configuration details for the endpoint. See `details` Block below.
  final pulumi.Input<MultiRegionEndpointDetails?>? details;
  /// ID assigned to the multi-region endpoint.
  final pulumi.Input<String?>? endpointId;
  /// Name of the multi-region endpoint.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? endpointName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of active routes. See `routes` below.
  final pulumi.Input<List<MultiRegionEndpointRoute>?>? routes;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<MultiRegionEndpointTimeouts?>? timeouts;

  /// Creates a new [MultiRegionEndpointState].
  /// [arn] ARN of the multi-region endpoint.
  /// [details] Configuration details for the endpoint. See `details` Block below.
  /// [endpointId] ID assigned to the multi-region endpoint.
  /// [endpointName] Name of the multi-region endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] List of active routes. See `routes` below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const MultiRegionEndpointState({
    this.arn,
    this.details,
    this.endpointId,
    this.endpointName,
    this.region,
    this.routes,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'details': ?pulumi.Input.mapOptionalInputValue<MultiRegionEndpointDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'endpointId': ?endpointId,
      'endpointName': ?endpointName,
      'region': ?region,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<MultiRegionEndpointRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<MultiRegionEndpointRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiRegionEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MultiRegionEndpointState.fromMap(Map<String, dynamic> map) {
    return MultiRegionEndpointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionEndpointDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultiRegionEndpointRoute>(guardedValue, (value) => MultiRegionEndpointRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
