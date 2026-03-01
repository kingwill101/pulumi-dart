// ignore_for_file: unused_element, unnecessary_cast

import 'http_tokens_state_enum_value_response.dart';
import 'instance_metadata_endpoint_state_enum_value_response.dart';
import 'instance_metadata_options_state_enum_value_response.dart';
import 'instance_metadata_protocol_state_enum_value_response.dart';
import 'instance_metadata_tags_state_enum_value_response.dart';

/// Definition of InstanceMetadataOptionsResponse
class InstanceMetadataOptionsResponseResponse {
  /// <p>Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.</p> <p>If the value is <code>disabled</code>, you cannot access your instance metadata.</p>
  final InstanceMetadataEndpointStateEnumValueResponse? httpEndpoint;
  /// <p>Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.</p> <p>Default: <code>disabled</code> </p>
  final InstanceMetadataProtocolStateEnumValueResponse? httpProtocolIpv6;
  /// <p>The maximum number of hops that the metadata token can travel.</p> <p>Possible values: Integers from <code>1</code> to <code>64</code> </p>
  final int? httpPutResponseHopLimit;
  /// <p>Indicates whether IMDSv2 is required.</p> <ul> <li> <p> <code>optional</code> - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.</p> </li> <li> <p> <code>required</code> - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.</p> </li> </ul>
  final HttpTokensStateEnumValueResponse? httpTokens;
  /// <p>Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'>Work with instance tags using the instance metadata</a>.</p>
  final InstanceMetadataTagsStateEnumValueResponse? instanceMetadataTags;
  /// <p>The state of the metadata option changes.</p> <p> <code>pending</code> - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.</p> <p> <code>applied</code> - The metadata options have been successfully applied on the instance.</p>
  final InstanceMetadataOptionsStateEnumValueResponse? state;

  /// Creates a new [InstanceMetadataOptionsResponseResponse].
  /// [httpEndpoint] <p>Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.</p> <p>If the value is <code>disabled</code>, you cannot access your instance metadata.</p>
  /// [httpProtocolIpv6] <p>Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.</p> <p>Default: <code>disabled</code> </p>
  /// [httpPutResponseHopLimit] <p>The maximum number of hops that the metadata token can travel.</p> <p>Possible values: Integers from <code>1</code> to <code>64</code> </p>
  /// [httpTokens] <p>Indicates whether IMDSv2 is required.</p> <ul> <li> <p> <code>optional</code> - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.</p> </li> <li> <p> <code>required</code> - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.</p> </li> </ul>
  /// [instanceMetadataTags] <p>Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'>Work with instance tags using the instance metadata</a>.</p>
  /// [state] <p>The state of the metadata option changes.</p> <p> <code>pending</code> - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.</p> <p> <code>applied</code> - The metadata options have been successfully applied on the instance.</p>
  InstanceMetadataOptionsResponseResponse({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': ?httpEndpoint == null ? null : httpEndpoint!.toMap(),
      'httpProtocolIpv6': ?httpProtocolIpv6 == null ? null : httpProtocolIpv6!.toMap(),
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens == null ? null : httpTokens!.toMap(),
      'instanceMetadataTags': ?instanceMetadataTags == null ? null : instanceMetadataTags!.toMap(),
      'state': ?state == null ? null : state!.toMap(),
    };
  }

  factory InstanceMetadataOptionsResponseResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataOptionsResponseResponse(
      httpEndpoint: map['httpEndpoint'] == null ? null : InstanceMetadataEndpointStateEnumValueResponse.fromMap((map['httpEndpoint'] as Map).cast<String, dynamic>()),
      httpProtocolIpv6: map['httpProtocolIpv6'] == null ? null : InstanceMetadataProtocolStateEnumValueResponse.fromMap((map['httpProtocolIpv6'] as Map).cast<String, dynamic>()),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] == null ? null : HttpTokensStateEnumValueResponse.fromMap((map['httpTokens'] as Map).cast<String, dynamic>()),
      instanceMetadataTags: map['instanceMetadataTags'] == null ? null : InstanceMetadataTagsStateEnumValueResponse.fromMap((map['instanceMetadataTags'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : InstanceMetadataOptionsStateEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
    );
  }
}

