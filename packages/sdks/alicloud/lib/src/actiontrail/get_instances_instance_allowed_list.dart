// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_allowed_list_internet_list.dart';
import 'get_instances_instance_allowed_list_vpc_list.dart';

class GetInstancesInstanceAllowedList {
  /// The deployed type of the instance.
  final String deployType;
  /// The internet list of the instance.
  final List<GetInstancesInstanceAllowedListInternetList> internetLists;
  /// The vpc list of the instance.
  final List<GetInstancesInstanceAllowedListVpcList> vpcLists;

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
      'internetLists': pulumi.Input.encodeList<GetInstancesInstanceAllowedListInternetList, Map<String, dynamic>>(internetLists, (value) => value.toMap()),
      'vpcLists': pulumi.Input.encodeList<GetInstancesInstanceAllowedListVpcList, Map<String, dynamic>>(vpcLists, (value) => value.toMap()),
    };
  }

  factory GetInstancesInstanceAllowedList.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceAllowedList(
      deployType: map['deployType'] as String,
      internetLists: pulumi.Input.decodeList<GetInstancesInstanceAllowedListInternetList>(map['internetLists'], (value) => GetInstancesInstanceAllowedListInternetList.fromMap((value as Map).cast<String, dynamic>())),
      vpcLists: pulumi.Input.decodeList<GetInstancesInstanceAllowedListVpcList>(map['vpcLists'], (value) => GetInstancesInstanceAllowedListVpcList.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

