// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_info_dimensions_info_detail.dart';

class GetSQuotaInfoDimensionsInfo {
  /// The applicable regions or zones of this dimensions info. The field will be set to `['global']` for quotas that are not per region or per zone. Otherwise, it will be set to the list of locations this dimension info is applicable to.
  final List<String> applicableLocations;
  /// The quota details for a map of dimensions.
  final List<GetSQuotaInfoDimensionsInfoDetail> details;
  /// The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  final Map<String, String> dimensions;

  /// Creates a new [GetSQuotaInfoDimensionsInfo].
  /// [applicableLocations] The applicable regions or zones of this dimensions info. The field will be set to `['global']` for quotas that are not per region or per zone. Otherwise, it will be set to the list of locations this dimension info is applicable to.
  /// [details] The quota details for a map of dimensions.
  /// [dimensions] The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  GetSQuotaInfoDimensionsInfo({
    required this.applicableLocations,
    required this.details,
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicableLocations': applicableLocations,
      'details': pulumi.Input.encodeList<GetSQuotaInfoDimensionsInfoDetail, Map<String, dynamic>>(details, (value) => value.toMap()),
      'dimensions': dimensions,
    };
  }

  factory GetSQuotaInfoDimensionsInfo.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoDimensionsInfo(
      applicableLocations: (map['applicableLocations'] as List).cast<String>(),
      details: pulumi.Input.decodeList<GetSQuotaInfoDimensionsInfoDetail>(map['details'], (value) => GetSQuotaInfoDimensionsInfoDetail.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: (map['dimensions'] as Map).cast<String, String>(),
    );
  }
}

