// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_add_on/instance_add_on.dart';

/// The set of arguments for Instance.
class InstanceArgs3 {
  /// Add-on configuration for the instance. See below.
  final Input<InstanceAddOn>? addOn;

  /// Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  final Input<String> availabilityZone;

  /// ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  final Input<String> blueprintId;

  /// Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  final Input<String> bundleId;

  /// IP address type of the Lightsail Instance. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>. Default: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  final Input<String>? ipAddressType;

  /// Name of your key pair. Created in the Lightsail console (cannot use <span pulumi-lang-nodejs="`aws.ec2.KeyPair`" pulumi-lang-dotnet="`aws.ec2.KeyPair`" pulumi-lang-go="`ec2.KeyPair`" pulumi-lang-python="`ec2.KeyPair`" pulumi-lang-yaml="`aws.ec2.KeyPair`" pulumi-lang-java="`aws.ec2.KeyPair`">`aws.ec2.KeyPair`</span> at this time).
  final Input<String>? keyPairName;

  /// Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Single lined launch script as a string to configure server with additional user data.
  final Input<String>? userData;

  InstanceArgs3({
    this.addOn,
    required this.availabilityZone,
    required this.blueprintId,
    required this.bundleId,
    this.ipAddressType,
    this.keyPairName,
    this.name,
    this.region,
    this.tags,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addOnValue = addOn;
    if (addOnValue != null) {
      map['addOn'] =
          Input.mapOptionalInputValue<InstanceAddOn, Map<String, dynamic>>(
              addOnValue, (value) => value.toMap());
    }
    map['availabilityZone'] = availabilityZone;
    map['blueprintId'] = blueprintId;
    map['bundleId'] = bundleId;
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final keyPairNameValue = keyPairName;
    if (keyPairNameValue != null) {
      map['keyPairName'] = keyPairNameValue;
    }
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
    final userDataValue = userData;
    if (userDataValue != null) {
      map['userData'] = userDataValue;
    }
    return map;
  }

  factory InstanceArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceArgs3(
      addOn: Input.asOptionalInput<InstanceAddOn>(map['addOn']),
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      blueprintId: Input.asInput<String>(map['blueprintId']),
      bundleId: Input.asInput<String>(map['bundleId']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      keyPairName: Input.asOptionalInput<String>(map['keyPairName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userData: Input.asOptionalInput<String>(map['userData']),
    );
  }
}
