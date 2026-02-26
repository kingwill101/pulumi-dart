// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Connection.
class ConnectionArgs4 {
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final Input<String> bandwidth;

  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are <span pulumi-lang-nodejs="`noEncrypt`" pulumi-lang-dotnet="`NoEncrypt`" pulumi-lang-go="`noEncrypt`" pulumi-lang-python="`no_encrypt`" pulumi-lang-yaml="`noEncrypt`" pulumi-lang-java="`noEncrypt`">`no_encrypt`</span>, <span pulumi-lang-nodejs="`shouldEncrypt`" pulumi-lang-dotnet="`ShouldEncrypt`" pulumi-lang-go="`shouldEncrypt`" pulumi-lang-python="`should_encrypt`" pulumi-lang-yaml="`shouldEncrypt`" pulumi-lang-java="`shouldEncrypt`">`should_encrypt`</span>, and <span pulumi-lang-nodejs="`mustEncrypt`" pulumi-lang-dotnet="`MustEncrypt`" pulumi-lang-go="`mustEncrypt`" pulumi-lang-python="`must_encrypt`" pulumi-lang-yaml="`mustEncrypt`" pulumi-lang-java="`mustEncrypt`">`must_encrypt`</span>.
  final Input<String>? encryptionMode;

  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final Input<String> location;

  /// The name of the connection.
  final Input<String>? name;

  /// The name of the service provider associated with the connection.
  final Input<String>? providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// > **NOTE:** Changing the value of <span pulumi-lang-nodejs="`requestMacsec`" pulumi-lang-dotnet="`RequestMacsec`" pulumi-lang-go="`requestMacsec`" pulumi-lang-python="`request_macsec`" pulumi-lang-yaml="`requestMacsec`" pulumi-lang-java="`requestMacsec`">`request_macsec`</span> will cause the resource to be destroyed and re-created.
  final Input<bool>? requestMacsec;

  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  final Input<bool>? skipDestroy;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ConnectionArgs4({
    required this.bandwidth,
    this.encryptionMode,
    required this.location,
    this.name,
    this.providerName,
    this.region,
    this.requestMacsec,
    this.skipDestroy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidth'] = bandwidth;
    final encryptionModeValue = encryptionMode;
    if (encryptionModeValue != null) {
      map['encryptionMode'] = encryptionModeValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestMacsecValue = requestMacsec;
    if (requestMacsecValue != null) {
      map['requestMacsec'] = requestMacsecValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectionArgs4.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs4(
      bandwidth: Input.asInput<String>(map['bandwidth']),
      encryptionMode: Input.asOptionalInput<String>(map['encryptionMode']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      providerName: Input.asOptionalInput<String>(map['providerName']),
      region: Input.asOptionalInput<String>(map['region']),
      requestMacsec: Input.asOptionalInput<bool>(map['requestMacsec']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
