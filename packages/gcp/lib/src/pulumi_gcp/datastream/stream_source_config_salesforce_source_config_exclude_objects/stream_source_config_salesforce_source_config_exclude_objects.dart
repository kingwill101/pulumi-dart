// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_salesforce_source_config_exclude_objects_object/stream_source_config_salesforce_source_config_exclude_objects_object.dart';

class StreamSourceConfigSalesforceSourceConfigExcludeObjects {
  /// Salesforce objects in data source.
  /// Structure is documented below.
  final List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject>
      objects;

  StreamSourceConfigSalesforceSourceConfigExcludeObjects({
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objects'] = Input.encodeList<
        StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject,
        Map<String, dynamic>>(objects, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjects(
      objects: Input.decodeList<
              StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject>(
          map['objects'],
          (value) =>
              StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
