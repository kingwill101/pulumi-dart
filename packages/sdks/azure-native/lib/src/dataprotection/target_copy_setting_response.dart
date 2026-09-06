// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_info_base_response.dart';

/// Target copy settings
class TargetCopySettingResponse {
  /// It can be CustomCopyOption or ImmediateCopyOption.
  final pulumi.Input<dynamic> copyAfter;
  /// Info of target datastore
  final pulumi.Input<DataStoreInfoBaseResponse> dataStore;

  /// Creates a new [TargetCopySettingResponse].
  /// [copyAfter] It can be CustomCopyOption or ImmediateCopyOption.
  /// [dataStore] Info of target datastore
  const TargetCopySettingResponse({
    required this.copyAfter,
    required this.dataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAfter': copyAfter,
      'dataStore': pulumi.Input.mapInputValue<DataStoreInfoBaseResponse, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
    };
  }

  factory TargetCopySettingResponse.fromMap(Map<String, dynamic> map) {
    return TargetCopySettingResponse(
      copyAfter: pulumi.Input.fromValue(map['copyAfter']),
      dataStore: pulumi.Input.fromValue(DataStoreInfoBaseResponse.fromMap((map['dataStore']! as Map).cast<String, dynamic>())),
    );
  }
}
