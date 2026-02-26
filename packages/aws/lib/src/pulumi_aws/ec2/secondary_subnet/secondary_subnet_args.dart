// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../secondary_subnet_timeouts/secondary_subnet_timeouts.dart';

/// The set of arguments for SecondarySubnet.
class SecondarySubnetArgs {
  /// Availability Zone for the secondary subnet. Cannot be specified with <span pulumi-lang-nodejs="`availabilityZoneId`" pulumi-lang-dotnet="`AvailabilityZoneId`" pulumi-lang-go="`availabilityZoneId`" pulumi-lang-python="`availability_zone_id`" pulumi-lang-yaml="`availabilityZoneId`" pulumi-lang-java="`availabilityZoneId`">`availability_zone_id`</span>.
  final Input<String>? availabilityZone;

  /// ID of the Availability Zone for the secondary subnet. This option is preferred over <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> as it provides a consistent identifier across AWS accounts. Cannot be specified with <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span>.
  final Input<String>? availabilityZoneId;

  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  final Input<String> ipv4CidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the secondary network in which to create the secondary subnet.
  final Input<String> secondaryNetworkId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<SecondarySubnetTimeouts>? timeouts;

  SecondarySubnetArgs({
    this.availabilityZone,
    this.availabilityZoneId,
    required this.ipv4CidrBlock,
    this.region,
    required this.secondaryNetworkId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    map['ipv4CidrBlock'] = ipv4CidrBlock;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secondaryNetworkId'] = secondaryNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<SecondarySubnetTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecondarySubnetArgs.fromMap(Map<String, dynamic> map) {
    return SecondarySubnetArgs(
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId:
          Input.asOptionalInput<String>(map['availabilityZoneId']),
      ipv4CidrBlock: Input.asInput<String>(map['ipv4CidrBlock']),
      region: Input.asOptionalInput<String>(map['region']),
      secondaryNetworkId: Input.asInput<String>(map['secondaryNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<SecondarySubnetTimeouts>(map['timeouts']),
    );
  }
}
