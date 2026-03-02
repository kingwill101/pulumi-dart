// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_allowed_list_internet_list.dart';
import 'get_instances_instance_allowed_list_vpc_list.dart';

class GetInstancesInstanceAllowedList {
  /// The deployed type of the instance.
  final pulumi.Input<String> deployType;
  /// The internet list of the instance.
  final pulumi.Input<List<GetInstancesInstanceAllowedListInternetList>> internetLists;
  /// The vpc list of the instance.
  final pulumi.Input<List<GetInstancesInstanceAllowedListVpcList>> vpcLists;

  /// Creates a new [GetInstancesInstanceAllowedList].
  /// [deployType] The deployed type of the instance.
  /// [internetLists] The internet list of the instance.
  /// [vpcLists] The vpc list of the instance.
  GetInstancesInstanceAllowedList({
    required this.deployType,
    required this.internetLists,
    required this.vpcLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployType': deployType,
      'internetLists': pulumi.Input.mapInputValue<List<GetInstancesInstanceAllowedListInternetList>, List<Map<String, dynamic>>>(internetLists, (value) => pulumi.Input.encodeList<GetInstancesInstanceAllowedListInternetList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcLists': pulumi.Input.mapInputValue<List<GetInstancesInstanceAllowedListVpcList>, List<Map<String, dynamic>>>(vpcLists, (value) => pulumi.Input.encodeList<GetInstancesInstanceAllowedListVpcList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstancesInstanceAllowedList.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceAllowedList(
      deployType: (map['deployType'] as String).input(),
      internetLists: (pulumi.Input.decodeList<GetInstancesInstanceAllowedListInternetList>(map['internetLists'], (value) => GetInstancesInstanceAllowedListInternetList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcLists: (pulumi.Input.decodeList<GetInstancesInstanceAllowedListVpcList>(map['vpcLists'], (value) => GetInstancesInstanceAllowedListVpcList.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

