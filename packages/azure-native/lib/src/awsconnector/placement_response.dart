// ignore_for_file: unused_element, unnecessary_cast

import 'tenancy_enum_value_response.dart';

/// Definition of Placement
class PlacementResponse {
  /// <p>The affinity setting for the instance on the Dedicated Host.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a> or <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a>.</p>
  final String? affinity;
  /// <p>The Availability Zone of the instance.</p> <p>If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  final String? availabilityZone;
  /// <p>The ID of the placement group that the instance is in. If you specify <code>GroupId</code>, you can't specify <code>GroupName</code>.</p>
  final String? groupId;
  /// <p>The name of the placement group that the instance is in. If you specify <code>GroupName</code>, you can't specify <code>GroupId</code>.</p>
  final String? groupName;
  /// <p>The ID of the Dedicated Host on which the instance resides.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a> or <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a>.</p>
  final String? hostId;
  /// <p>The ARN of the host resource group in which to launch the instances.</p> <p>If you specify this parameter, either omit the <b>Tenancy</b> parameter or set it to <code>host</code>.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  final String? hostResourceGroupArn;
  /// <p>The number of the partition that the instance is in. Valid only if the placement group strategy is set to <code>partition</code>.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  final int? partitionNumber;
  /// <p>Reserved for future use.</p>
  final String? spreadDomain;
  /// <p>The tenancy of the instance. An instance with a tenancy of <code>dedicated</code> runs on single-tenant hardware.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>. The <code>host</code> tenancy is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a> or for T3 instances that are configured for the <code>unlimited</code> CPU credit option.</p>
  final TenancyEnumValueResponse? tenancy;

  /// Creates a new [PlacementResponse].
  /// [affinity] <p>The affinity setting for the instance on the Dedicated Host.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a> or <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a>.</p>
  /// [availabilityZone] <p>The Availability Zone of the instance.</p> <p>If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  /// [groupId] <p>The ID of the placement group that the instance is in. If you specify <code>GroupId</code>, you can't specify <code>GroupName</code>.</p>
  /// [groupName] <p>The name of the placement group that the instance is in. If you specify <code>GroupName</code>, you can't specify <code>GroupId</code>.</p>
  /// [hostId] <p>The ID of the Dedicated Host on which the instance resides.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a> or <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a>.</p>
  /// [hostResourceGroupArn] <p>The ARN of the host resource group in which to launch the instances.</p> <p>If you specify this parameter, either omit the <b>Tenancy</b> parameter or set it to <code>host</code>.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  /// [partitionNumber] <p>The number of the partition that the instance is in. Valid only if the placement group strategy is set to <code>partition</code>.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>.</p>
  /// [spreadDomain] <p>Reserved for future use.</p>
  /// [tenancy] <p>The tenancy of the instance. An instance with a tenancy of <code>dedicated</code> runs on single-tenant hardware.</p> <p>This parameter is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet'>CreateFleet</a>. The <code>host</code> tenancy is not supported for <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html'>ImportInstance</a> or for T3 instances that are configured for the <code>unlimited</code> CPU credit option.</p>
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
      'tenancy': ?tenancy == null ? null : tenancy!.toMap(),
    };
  }

  factory PlacementResponse.fromMap(Map<String, dynamic> map) {
    return PlacementResponse(
      affinity: map['affinity'] == null ? null : map['affinity'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] == null ? null : map['hostResourceGroupArn'] as String,
      partitionNumber: map['partitionNumber'] == null ? null : map['partitionNumber'] as int,
      spreadDomain: map['spreadDomain'] == null ? null : map['spreadDomain'] as String,
      tenancy: map['tenancy'] == null ? null : TenancyEnumValueResponse.fromMap((map['tenancy'] as Map).cast<String, dynamic>()),
    );
  }
}

