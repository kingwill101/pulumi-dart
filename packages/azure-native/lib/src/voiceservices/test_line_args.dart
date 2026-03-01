// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voiceservices_test_line_args_doc}
/// The set of arguments for TestLine.
/// {@endtemplate}
/// {@macro pulumi_voiceservices_test_line_args_doc}
class TestLineArgs {
  /// Unique identifier for this deployment
  final pulumi.Input<String> communicationsGatewayName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The phone number
  final pulumi.Input<String> phoneNumber;
  /// Purpose of this test line, e.g. automated or manual testing
  final pulumi.Input<String> purpose;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Unique identifier for this test line
  final pulumi.Input<String>? testLineName;

  /// Creates a new [TestLineArgs].
  /// [communicationsGatewayName] Unique identifier for this deployment
  /// [location] The geo-location where the resource lives
  /// [phoneNumber] The phone number
  /// [purpose] Purpose of this test line, e.g. automated or manual testing
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [testLineName] Unique identifier for this test line
  TestLineArgs({
    required String communicationsGatewayName,
    String? location,
    required String phoneNumber,
    required String purpose,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? testLineName,
  }) :
      communicationsGatewayName = pulumi.Input.asInput<String>(communicationsGatewayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      phoneNumber = pulumi.Input.asInput<String>(phoneNumber),
      purpose = pulumi.Input.asInput<String>(purpose),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      testLineName = pulumi.Input.asOptionalInput<String>(testLineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'location': ?location,
      'phoneNumber': phoneNumber,
      'purpose': purpose,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'testLineName': ?testLineName,
    };
  }

  factory TestLineArgs.fromMap(Map<String, dynamic> map) {
    return TestLineArgs(
      communicationsGatewayName: map['communicationsGatewayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      phoneNumber: map['phoneNumber'] as String,
      purpose: map['purpose'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      testLineName: map['testLineName'] == null ? null : map['testLineName'] as String,
    );
  }
}

