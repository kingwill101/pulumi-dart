// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_point_access_point_feature_model.dart';

class GetAccessPointsPoint {
  /// Query to the Access Point Feature Model.
  final List<GetAccessPointsPointAccessPointFeatureModel> accessPointFeatureModels;
  /// The Access Point ID.
  final String accessPointId;
  /// Access Point Name.
  final String accessPointName;
  /// The Access Point Is Located an ID.
  final String attachedRegionNo;
  /// The Access Point Description.
  final String description;
  /// The Access Point Belongs to the Operator.
  final String hostOperator;
  /// The ID of the Access Point.
  final String id;
  /// The Location of the Access Point.
  final String location;
  /// The Physical Connection to Which the Access Point State.
  final String status;
  /// The Physical Connection to Which the Network Type.
  final String type;

  /// Creates a new [GetAccessPointsPoint].
  /// [accessPointFeatureModels] Query to the Access Point Feature Model.
  /// [accessPointId] The Access Point ID.
  /// [accessPointName] Access Point Name.
  /// [attachedRegionNo] The Access Point Is Located an ID.
  /// [description] The Access Point Description.
  /// [hostOperator] The Access Point Belongs to the Operator.
  /// [id] The ID of the Access Point.
  /// [location] The Location of the Access Point.
  /// [status] The Physical Connection to Which the Access Point State.
  /// [type] The Physical Connection to Which the Network Type.
  GetAccessPointsPoint({
    required this.accessPointFeatureModels,
    required this.accessPointId,
    required this.accessPointName,
    required this.attachedRegionNo,
    required this.description,
    required this.hostOperator,
    required this.id,
    required this.location,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointFeatureModels': pulumi.Input.encodeList<GetAccessPointsPointAccessPointFeatureModel, Map<String, dynamic>>(accessPointFeatureModels, (value) => value.toMap()),
      'accessPointId': accessPointId,
      'accessPointName': accessPointName,
      'attachedRegionNo': attachedRegionNo,
      'description': description,
      'hostOperator': hostOperator,
      'id': id,
      'location': location,
      'status': status,
      'type': type,
    };
  }

  factory GetAccessPointsPoint.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsPoint(
      accessPointFeatureModels: pulumi.Input.decodeList<GetAccessPointsPointAccessPointFeatureModel>(map['accessPointFeatureModels'], (value) => GetAccessPointsPointAccessPointFeatureModel.fromMap((value as Map).cast<String, dynamic>())),
      accessPointId: map['accessPointId'] as String,
      accessPointName: map['accessPointName'] as String,
      attachedRegionNo: map['attachedRegionNo'] as String,
      description: map['description'] as String,
      hostOperator: map['hostOperator'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

