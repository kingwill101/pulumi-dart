// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_tokens_state_enum_value_response.dart';
import 'instance_metadata_endpoint_state_enum_value_response.dart';
import 'instance_metadata_options_state_enum_value_response.dart';
import 'instance_metadata_protocol_state_enum_value_response.dart';
import 'instance_metadata_tags_state_enum_value_response.dart';

/// Definition of InstanceMetadataOptionsResponse
class InstanceMetadataOptionsResponseResponse {
  /// &lt;p&gt;Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.&lt;/p&gt; &lt;p&gt;If the value is &lt;code&gt;disabled&lt;/code&gt;, you cannot access your instance metadata.&lt;/p&gt;
  final pulumi.Input<InstanceMetadataEndpointStateEnumValueResponse>?
  httpEndpoint;

  /// &lt;p&gt;Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;disabled&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<InstanceMetadataProtocolStateEnumValueResponse>?
  httpProtocolIpv6;

  /// &lt;p&gt;The maximum number of hops that the metadata token can travel.&lt;/p&gt; &lt;p&gt;Possible values: Integers from &lt;code&gt;1&lt;/code&gt; to &lt;code&gt;64&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<int>? httpPutResponseHopLimit;

  /// &lt;p&gt;Indicates whether IMDSv2 is required.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;optional&lt;/code&gt; - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;required&lt;/code&gt; - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<HttpTokensStateEnumValueResponse>? httpTokens;

  /// &lt;p&gt;Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'&gt;Work with instance tags using the instance metadata&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<InstanceMetadataTagsStateEnumValueResponse>?
  instanceMetadataTags;

  /// &lt;p&gt;The state of the metadata option changes.&lt;/p&gt; &lt;p&gt; &lt;code&gt;pending&lt;/code&gt; - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.&lt;/p&gt; &lt;p&gt; &lt;code&gt;applied&lt;/code&gt; - The metadata options have been successfully applied on the instance.&lt;/p&gt;
  final pulumi.Input<InstanceMetadataOptionsStateEnumValueResponse>? state;

  /// Creates a new [InstanceMetadataOptionsResponseResponse].
  /// [httpEndpoint] &lt;p&gt;Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.&lt;/p&gt; &lt;p&gt;If the value is &lt;code&gt;disabled&lt;/code&gt;, you cannot access your instance metadata.&lt;/p&gt;
  /// [httpProtocolIpv6] &lt;p&gt;Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;disabled&lt;/code&gt; &lt;/p&gt;
  /// [httpPutResponseHopLimit] &lt;p&gt;The maximum number of hops that the metadata token can travel.&lt;/p&gt; &lt;p&gt;Possible values: Integers from &lt;code&gt;1&lt;/code&gt; to &lt;code&gt;64&lt;/code&gt; &lt;/p&gt;
  /// [httpTokens] &lt;p&gt;Indicates whether IMDSv2 is required.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;optional&lt;/code&gt; - IMDSv2 is optional, which means that you can use either IMDSv2 or IMDSv1.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;required&lt;/code&gt; - IMDSv2 is required, which means that IMDSv1 is disabled, and you must use IMDSv2.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [instanceMetadataTags] &lt;p&gt;Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS'&gt;Work with instance tags using the instance metadata&lt;/a&gt;.&lt;/p&gt;
  /// [state] &lt;p&gt;The state of the metadata option changes.&lt;/p&gt; &lt;p&gt; &lt;code&gt;pending&lt;/code&gt; - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.&lt;/p&gt; &lt;p&gt; &lt;code&gt;applied&lt;/code&gt; - The metadata options have been successfully applied on the instance.&lt;/p&gt;
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
      'httpEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceMetadataEndpointStateEnumValueResponse,
            Map<String, dynamic>
          >(httpEndpoint, (value) => value.toMap()),
      'httpProtocolIpv6':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceMetadataProtocolStateEnumValueResponse,
            Map<String, dynamic>
          >(httpProtocolIpv6, (value) => value.toMap()),
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens':
          ?pulumi.Input.mapOptionalInputValue<
            HttpTokensStateEnumValueResponse,
            Map<String, dynamic>
          >(httpTokens, (value) => value.toMap()),
      'instanceMetadataTags':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceMetadataTagsStateEnumValueResponse,
            Map<String, dynamic>
          >(instanceMetadataTags, (value) => value.toMap()),
      'state':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceMetadataOptionsStateEnumValueResponse,
            Map<String, dynamic>
          >(state, (value) => value.toMap()),
    };
  }

  factory InstanceMetadataOptionsResponseResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceMetadataOptionsResponseResponse(
      httpEndpoint: (() {
        final guardedValue = map['httpEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceMetadataEndpointStateEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpProtocolIpv6: (() {
        final guardedValue = map['httpProtocolIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceMetadataProtocolStateEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpPutResponseHopLimit: (() {
        final guardedValue = map['httpPutResponseHopLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpTokens: (() {
        final guardedValue = map['httpTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpTokensStateEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceMetadataTags: (() {
        final guardedValue = map['instanceMetadataTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceMetadataTagsStateEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceMetadataOptionsStateEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
