// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_instance_view_with_name_response.dart';

class DedicatedHostGroupInstanceViewResponse {
  /// List of instance view of the dedicated hosts under the dedicated host group.
  final pulumi.Input<List<DedicatedHostInstanceViewWithNameResponse>>? hosts;

  /// Creates a new [DedicatedHostGroupInstanceViewResponse].
  /// [hosts] List of instance view of the dedicated hosts under the dedicated host group.
  DedicatedHostGroupInstanceViewResponse({this.hosts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts':
          ?pulumi.Input.mapOptionalInputValue<
            List<DedicatedHostInstanceViewWithNameResponse>,
            List<Map<String, dynamic>>
          >(
            hosts,
            (value) =>
                pulumi.Input.encodeList<
                  DedicatedHostInstanceViewWithNameResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DedicatedHostGroupInstanceViewResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedHostGroupInstanceViewResponse(
      hosts: (() {
        final guardedValue = map['hosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DedicatedHostInstanceViewWithNameResponse>(
            guardedValue,
            (value) => DedicatedHostInstanceViewWithNameResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
