// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenancy_enum_value_response.dart';

/// Definition of Placement
class PlacementResponse {
  /// &lt;p&gt;The affinity setting for the instance on the Dedicated Host.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? affinity;

  /// &lt;p&gt;The Availability Zone of the instance.&lt;/p&gt; &lt;p&gt;If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;

  /// &lt;p&gt;The ID of the placement group that the instance is in. If you specify &lt;code&gt;GroupId&lt;/code&gt;, you can't specify &lt;code&gt;GroupName&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? groupId;

  /// &lt;p&gt;The name of the placement group that the instance is in. If you specify &lt;code&gt;GroupName&lt;/code&gt;, you can't specify &lt;code&gt;GroupId&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? groupName;

  /// &lt;p&gt;The ID of the Dedicated Host on which the instance resides.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? hostId;

  /// &lt;p&gt;The ARN of the host resource group in which to launch the instances.&lt;/p&gt; &lt;p&gt;If you specify this parameter, either omit the &lt;b&gt;Tenancy&lt;/b&gt; parameter or set it to &lt;code&gt;host&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? hostResourceGroupArn;

  /// &lt;p&gt;The number of the partition that the instance is in. Valid only if the placement group strategy is set to &lt;code&gt;partition&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<int>? partitionNumber;

  /// &lt;p&gt;Reserved for future use.&lt;/p&gt;
  final pulumi.Input<String>? spreadDomain;

  /// &lt;p&gt;The tenancy of the instance. An instance with a tenancy of &lt;code&gt;dedicated&lt;/code&gt; runs on single-tenant hardware.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;. The &lt;code&gt;host&lt;/code&gt; tenancy is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt; or for T3 instances that are configured for the &lt;code&gt;unlimited&lt;/code&gt; CPU credit option.&lt;/p&gt;
  final pulumi.Input<TenancyEnumValueResponse>? tenancy;

  /// Creates a new [PlacementResponse].
  /// [affinity] &lt;p&gt;The affinity setting for the instance on the Dedicated Host.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt;.&lt;/p&gt;
  /// [availabilityZone] &lt;p&gt;The Availability Zone of the instance.&lt;/p&gt; &lt;p&gt;If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  /// [groupId] &lt;p&gt;The ID of the placement group that the instance is in. If you specify &lt;code&gt;GroupId&lt;/code&gt;, you can't specify &lt;code&gt;GroupName&lt;/code&gt;.&lt;/p&gt;
  /// [groupName] &lt;p&gt;The name of the placement group that the instance is in. If you specify &lt;code&gt;GroupName&lt;/code&gt;, you can't specify &lt;code&gt;GroupId&lt;/code&gt;.&lt;/p&gt;
  /// [hostId] &lt;p&gt;The ID of the Dedicated Host on which the instance resides.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt; or &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt;.&lt;/p&gt;
  /// [hostResourceGroupArn] &lt;p&gt;The ARN of the host resource group in which to launch the instances.&lt;/p&gt; &lt;p&gt;If you specify this parameter, either omit the &lt;b&gt;Tenancy&lt;/b&gt; parameter or set it to &lt;code&gt;host&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  /// [partitionNumber] &lt;p&gt;The number of the partition that the instance is in. Valid only if the placement group strategy is set to &lt;code&gt;partition&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;.&lt;/p&gt;
  /// [spreadDomain] &lt;p&gt;Reserved for future use.&lt;/p&gt;
  /// [tenancy] &lt;p&gt;The tenancy of the instance. An instance with a tenancy of &lt;code&gt;dedicated&lt;/code&gt; runs on single-tenant hardware.&lt;/p&gt; &lt;p&gt;This parameter is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'&gt;CreateFleet&lt;/a&gt;. The &lt;code&gt;host&lt;/code&gt; tenancy is not supported for &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'&gt;ImportInstance&lt;/a&gt; or for T3 instances that are configured for the &lt;code&gt;unlimited&lt;/code&gt; CPU credit option.&lt;/p&gt;
  PlacementResponse({
    this.affinity,
    this.availabilityZone,
    this.groupId,
    this.groupName,
    this.hostId,
    this.hostResourceGroupArn,
    this.partitionNumber,
    this.spreadDomain,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?affinity,
      'availabilityZone': ?availabilityZone,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'partitionNumber': ?partitionNumber,
      'spreadDomain': ?spreadDomain,
      'tenancy':
          ?pulumi.Input.mapOptionalInputValue<
            TenancyEnumValueResponse,
            Map<String, dynamic>
          >(tenancy, (value) => value.toMap()),
    };
  }

  factory PlacementResponse.fromMap(Map<String, dynamic> map) {
    return PlacementResponse(
      affinity: (() {
        final guardedValue = map['affinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostId: (() {
        final guardedValue = map['hostId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostResourceGroupArn: (() {
        final guardedValue = map['hostResourceGroupArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionNumber: (() {
        final guardedValue = map['partitionNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spreadDomain: (() {
        final guardedValue = map['spreadDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenancy: (() {
        final guardedValue = map['tenancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TenancyEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
