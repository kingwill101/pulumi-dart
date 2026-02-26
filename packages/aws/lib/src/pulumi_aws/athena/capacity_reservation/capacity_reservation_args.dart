// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capacity_reservation_timeouts/capacity_reservation_timeouts.dart';

/// The set of arguments for CapacityReservation.
class CapacityReservationArgs {
  /// Name of the capacity reservation.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Number of data processing units requested. Must be at least <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span> units.
  ///
  /// The following arguments are optional:
  final Input<int> targetDpus;
  final Input<CapacityReservationTimeouts>? timeouts;

  CapacityReservationArgs({
    this.name,
    this.region,
    this.tags,
    required this.targetDpus,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetDpus'] = targetDpus;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<CapacityReservationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetDpus: Input.asInput<int>(map['targetDpus']),
      timeouts:
          Input.asOptionalInput<CapacityReservationTimeouts>(map['timeouts']),
    );
  }
}
