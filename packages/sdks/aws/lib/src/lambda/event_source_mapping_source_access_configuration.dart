// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingSourceAccessConfiguration {
  /// Type of authentication protocol, VPC components, or virtual host for your event source. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/lambda/latest/api/API_SourceAccessConfiguration.html).
  final pulumi.Input<String> type;

  /// URI for this configuration. For type `VPC_SUBNET` the value should be `subnet:subnet_id` where `subnet_id` is the value you would find in an aws.ec2.Subnet resource's id attribute. For type `VPC_SECURITY_GROUP` the value should be `security_group:security_group_id` where `security_group_id` is the value you would find in an aws.ec2.SecurityGroup resource's id attribute.
  final pulumi.Input<String> uri;

  /// Creates a new [EventSourceMappingSourceAccessConfiguration].
  /// [type] Type of authentication protocol, VPC components, or virtual host for your event source. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/lambda/latest/api/API_SourceAccessConfiguration.html).
  /// [uri] URI for this configuration. For type `VPC_SUBNET` the value should be `subnet:subnet_id` where `subnet_id` is the value you would find in an aws.ec2.Subnet resource's id attribute. For type `VPC_SECURITY_GROUP` the value should be `security_group:security_group_id` where `security_group_id` is the value you would find in an aws.ec2.SecurityGroup resource's id attribute.
  EventSourceMappingSourceAccessConfiguration({
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'uri': uri};
  }

  factory EventSourceMappingSourceAccessConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSourceMappingSourceAccessConfiguration(
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
