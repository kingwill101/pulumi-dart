// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// A test of an iOS application that uses the XCTest framework. Xcode supports the option to "build for testing", which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build/Products directory that contains all the binaries needed to run the tests.
class IosXcTest {
  /// The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.
  final bool? testSpecialEntitlements;
  /// The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.
  final FileReference testsZip;
  /// The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.
  final String? xcodeVersion;
  /// An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.
  final FileReference? xctestrun;

  /// Creates a new [IosXcTest].
  /// [testSpecialEntitlements] The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.
  /// [testsZip] The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.
  /// [xcodeVersion] The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.
  /// [xctestrun] An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.
  IosXcTest({
    this.testSpecialEntitlements,
    required this.testsZip,
    this.xcodeVersion,
    this.xctestrun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testSpecialEntitlements': ?testSpecialEntitlements,
      'testsZip': testsZip.toMap(),
      'xcodeVersion': ?xcodeVersion,
      'xctestrun': ?xctestrun == null ? null : xctestrun!.toMap(),
    };
  }

  factory IosXcTest.fromMap(Map<String, dynamic> map) {
    return IosXcTest(
      testSpecialEntitlements: map['testSpecialEntitlements'] == null ? null : map['testSpecialEntitlements'] as bool,
      testsZip: FileReference.fromMap((map['testsZip'] as Map).cast<String, dynamic>()),
      xcodeVersion: map['xcodeVersion'] == null ? null : map['xcodeVersion'] as String,
      xctestrun: map['xctestrun'] == null ? null : FileReference.fromMap((map['xctestrun'] as Map).cast<String, dynamic>()),
    );
  }
}

