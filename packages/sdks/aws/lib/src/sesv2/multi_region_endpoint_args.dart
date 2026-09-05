// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_endpoint_details.dart';
import 'multi_region_endpoint_timeouts.dart';

/// {@template pulumi_sesv2_multi_region_endpoint_multi_region_endpoint_args_doc}
/// The set of arguments for MultiRegionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_sesv2_multi_region_endpoint_multi_region_endpoint_args_doc}
class MultiRegionEndpointArgs {
  /// Configuration details for the endpoint. See `details` Block below.
  final pulumi.Input<MultiRegionEndpointDetails?>? details;
  /// Name of the multi-region endpoint.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> endpointName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<MultiRegionEndpointTimeouts?>? timeouts;

  /// Creates a new [MultiRegionEndpointArgs].
  /// [details] Configuration details for the endpoint. See `details` Block below.
  /// [endpointName] Name of the multi-region endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const MultiRegionEndpointArgs({
    this.details,
    required this.endpointName,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<MultiRegionEndpointDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'endpointName': endpointName,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiRegionEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MultiRegionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionEndpointArgs(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionEndpointDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
