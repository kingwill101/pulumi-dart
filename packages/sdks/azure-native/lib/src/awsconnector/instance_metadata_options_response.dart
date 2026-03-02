// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_tokens_state_enum_value.dart';
import 'instance_metadata_endpoint_state_enum_value.dart';
import 'instance_metadata_options_state_enum_value.dart';
import 'instance_metadata_protocol_state_enum_value.dart';
import 'instance_metadata_tags_state_enum_value.dart';

/// Definition of InstanceMetadataOptionsResponse
class InstanceMetadataOptionsResponse {
  /// <p>Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.</p> <p>If the value is <code>disabled</code>, you cannot access your instance metadata.</p>
  final pulumi.Input<InstanceMetadataEndpointStateEnumValue>? httpEndpoint;
  /// <p>Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.</p> <p>Default: <code>disabled</code> </p>
  final pulumi.Input<InstanceMetadataProtocolStateEnumValue>? httpProtocolIpv6;
  /// <p>The maximum number of hops that the metadata token can travel.</p> <p>Possible values: Integers from <code>1</code> to <code>64</code> </p>
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// <p>Indicates whether IMDSv2 is required.</p> <ul> <li> <p> <code>optional</code> - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.</p> </li> <li> <p> <code>required</code> - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.</p> </li> </ul>
  final pulumi.Input<HttpTokensStateEnumValue>? httpTokens;
  /// <p>Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'>Work with instance tags using the instance metadata</a>.</p>
  final pulumi.Input<InstanceMetadataTagsStateEnumValue>? instanceMetadataTags;
  /// <p>The state of the metadata option changes.</p> <p> <code>pending</code> - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.</p> <p> <code>applied</code> - The metadata options have been successfully applied on the instance.</p>
  final pulumi.Input<InstanceMetadataOptionsStateEnumValue>? state;

  /// Creates a new [InstanceMetadataOptionsResponse].
  /// [httpEndpoint] <p>Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.</p> <p>If the value is <code>disabled</code>, you cannot access your instance metadata.</p>
  /// [httpProtocolIpv6] <p>Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.</p> <p>Default: <code>disabled</code> </p>
  /// [httpPutResponseHopLimit] <p>The maximum number of hops that the metadata token can travel.</p> <p>Possible values: Integers from <code>1</code> to <code>64</code> </p>
  /// [httpTokens] <p>Indicates whether IMDSv2 is required.</p> <ul> <li> <p> <code>optional</code> - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.</p> </li> <li> <p> <code>required</code> - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.</p> </li> </ul>
  /// [instanceMetadataTags] <p>Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'>Work with instance tags using the instance metadata</a>.</p>
  /// [state] <p>The state of the metadata option changes.</p> <p> <code>pending</code> - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.</p> <p> <code>applied</code> - The metadata options have been successfully applied on the instance.</p>
  InstanceMetadataOptionsResponse({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataEndpointStateEnumValue, Map<String, dynamic>>(httpEndpoint, (value) => value.toMap()),
      'httpProtocolIpv6': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataProtocolStateEnumValue, Map<String, dynamic>>(httpProtocolIpv6, (value) => value.toMap()),
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?pulumi.Input.mapOptionalInputValue<HttpTokensStateEnumValue, Map<String, dynamic>>(httpTokens, (value) => value.toMap()),
      'instanceMetadataTags': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataTagsStateEnumValue, Map<String, dynamic>>(instanceMetadataTags, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataOptionsStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory InstanceMetadataOptionsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataOptionsResponse(
      httpEndpoint: map['httpEndpoint'] == null ? null : (InstanceMetadataEndpointStateEnumValue.fromMap((map['httpEndpoint']! as Map).cast<String, dynamic>())).input(),
      httpProtocolIpv6: map['httpProtocolIpv6'] == null ? null : (InstanceMetadataProtocolStateEnumValue.fromMap((map['httpProtocolIpv6']! as Map).cast<String, dynamic>())).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : (map['httpPutResponseHopLimit']! as int).input(),
      httpTokens: map['httpTokens'] == null ? null : (HttpTokensStateEnumValue.fromMap((map['httpTokens']! as Map).cast<String, dynamic>())).input(),
      instanceMetadataTags: map['instanceMetadataTags'] == null ? null : (InstanceMetadataTagsStateEnumValue.fromMap((map['instanceMetadataTags']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (InstanceMetadataOptionsStateEnumValue.fromMap((map['state']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

