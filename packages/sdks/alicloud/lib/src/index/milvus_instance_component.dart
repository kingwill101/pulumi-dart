// ignore_for_file: unused_element, unnecessary_cast


class MilvusInstanceComponent {
  /// The number of CU. For example: 4
  final int cuNum;
  /// The calculation type. The default value is general, and the ram type needs to be opened with a work order.
  /// - general: Generic
  /// - ram: Capacity
  final String? cuType;
  /// Default Normal. The Query Node is configured with the capacity type, performance type, and capacity type Large, and the rest are configured with Normal.
  final String? diskSizeType;
  /// The number of component replicas. The number of highly available replicas must be greater than or equal to 2.
  final int replica;
  /// The component type. Different types need to be configured according to different versions.
  /// - Starter version: Array including standalone
  /// - Standard Edition: The configuration is different according to the 2.5 version and 2.6 version.
  /// 2.5: proxy ,mix_coordinator,data,query,index
  /// 2.6 need to configure: proxy,mix_coordinator,data,query,streaming
  final String type;

  /// Creates a new [MilvusInstanceComponent].
  /// [cuNum] The number of CU. For example: 4
  /// [cuType] The calculation type. The default value is general, and the ram type needs to be opened with a work order.
  /// [diskSizeType] Default Normal. The Query Node is configured with the capacity type, performance type, and capacity type Large, and the rest are configured with Normal.
  /// [replica] The number of component replicas. The number of highly available replicas must be greater than or equal to 2.
  /// [type] The component type. Different types need to be configured according to different versions.
  MilvusInstanceComponent({
    required this.cuNum,
    this.cuType,
    this.diskSizeType,
    required this.replica,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cuNum': cuNum,
      'cuType': ?cuType,
      'diskSizeType': ?diskSizeType,
      'replica': replica,
      'type': type,
    };
  }

  factory MilvusInstanceComponent.fromMap(Map<String, dynamic> map) {
    return MilvusInstanceComponent(
      cuNum: map['cuNum'] as int,
      cuType: map['cuType'] == null ? null : map['cuType'] as String,
      diskSizeType: map['diskSizeType'] == null ? null : map['diskSizeType'] as String,
      replica: map['replica'] as int,
      type: map['type'] as String,
    );
  }
}

