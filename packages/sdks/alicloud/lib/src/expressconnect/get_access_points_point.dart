// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_point_access_point_feature_model.dart';

class GetAccessPointsPoint {
  /// Query to the Access Point Feature Model.
  final pulumi.Input<List<GetAccessPointsPointAccessPointFeatureModel>>
  accessPointFeatureModels;

  /// The Access Point ID.
  final pulumi.Input<String> accessPointId;

  /// Access Point Name.
  final pulumi.Input<String> accessPointName;

  /// The Access Point Is Located an ID.
  final pulumi.Input<String> attachedRegionNo;

  /// The Access Point Description.
  final pulumi.Input<String> description;

  /// The Access Point Belongs to the Operator.
  final pulumi.Input<String> hostOperator;

  /// The ID of the Access Point.
  final pulumi.Input<String> id;

  /// The Location of the Access Point.
  final pulumi.Input<String> location;

  /// The Physical Connection to Which the Access Point State.
  final pulumi.Input<String> status;

  /// The Physical Connection to Which the Network Type.
  final pulumi.Input<String> type;

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
      'accessPointFeatureModels':
          pulumi.Input.mapInputValue<
            List<GetAccessPointsPointAccessPointFeatureModel>,
            List<Map<String, dynamic>>
          >(
            accessPointFeatureModels,
            (value) =>
                pulumi.Input.encodeList<
                  GetAccessPointsPointAccessPointFeatureModel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accessPointFeatureModels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAccessPointsPointAccessPointFeatureModel>(
          map['accessPointFeatureModels']!,
          (value) => GetAccessPointsPointAccessPointFeatureModel.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      accessPointId: pulumi.Input.fromValue(map['accessPointId'] as String),
      accessPointName: pulumi.Input.fromValue(map['accessPointName'] as String),
      attachedRegionNo: pulumi.Input.fromValue(
        map['attachedRegionNo'] as String,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      hostOperator: pulumi.Input.fromValue(map['hostOperator'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
