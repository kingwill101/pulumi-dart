// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_status_enum_value_response.dart';

/// Definition of ServiceSoftwareOptions
class ServiceSoftwareOptionsResponse {
  /// <p>The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
  final pulumi.Input<String>? automatedUpdateDate;
  /// <p> True if you're able to cancel your service software version update. False if you can't cancel your service software update.</p>
  final pulumi.Input<bool>? cancellable;
  /// <p>The current service software version present on the domain.</p>
  final pulumi.Input<String>? currentVersion;
  /// <p>A description of the service software update status.</p>
  final pulumi.Input<String>? description;
  /// <p>The new service software version, if one is available.</p>
  final pulumi.Input<String>? newVersion;
  /// <p>True if a service software is never automatically updated. False if a service software is automatically updated after the automated update date.</p>
  final pulumi.Input<bool>? optionalDeployment;
  /// <p>True if you're able to update your service software version. False if you can't update your service software version.</p>
  final pulumi.Input<bool>? updateAvailable;
  /// <p>The status of your service software update.</p>
  final pulumi.Input<DeploymentStatusEnumValueResponse>? updateStatus;

  /// Creates a new [ServiceSoftwareOptionsResponse].
  /// [automatedUpdateDate] <p>The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
  /// [cancellable] <p> True if you're able to cancel your service software version update. False if you can't cancel your service software update.</p>
  /// [currentVersion] <p>The current service software version present on the domain.</p>
  /// [description] <p>A description of the service software update status.</p>
  /// [newVersion] <p>The new service software version, if one is available.</p>
  /// [optionalDeployment] <p>True if a service software is never automatically updated. False if a service software is automatically updated after the automated update date.</p>
  /// [updateAvailable] <p>True if you're able to update your service software version. False if you can't update your service software version.</p>
  /// [updateStatus] <p>The status of your service software update.</p>
  ServiceSoftwareOptionsResponse({
    this.automatedUpdateDate,
    this.cancellable,
    this.currentVersion,
    this.description,
    this.newVersion,
    this.optionalDeployment,
    this.updateAvailable,
    this.updateStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedUpdateDate': ?automatedUpdateDate,
      'cancellable': ?cancellable,
      'currentVersion': ?currentVersion,
      'description': ?description,
      'newVersion': ?newVersion,
      'optionalDeployment': ?optionalDeployment,
      'updateAvailable': ?updateAvailable,
      'updateStatus': ?pulumi.Input.mapOptionalInputValue<DeploymentStatusEnumValueResponse, Map<String, dynamic>>(updateStatus, (value) => value.toMap()),
    };
  }

  factory ServiceSoftwareOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceSoftwareOptionsResponse(
      automatedUpdateDate: map['automatedUpdateDate'] == null ? null : (map['automatedUpdateDate']! as String).input(),
      cancellable: map['cancellable'] == null ? null : (map['cancellable']! as bool).input(),
      currentVersion: map['currentVersion'] == null ? null : (map['currentVersion']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      newVersion: map['newVersion'] == null ? null : (map['newVersion']! as String).input(),
      optionalDeployment: map['optionalDeployment'] == null ? null : (map['optionalDeployment']! as bool).input(),
      updateAvailable: map['updateAvailable'] == null ? null : (map['updateAvailable']! as bool).input(),
      updateStatus: map['updateStatus'] == null ? null : (DeploymentStatusEnumValueResponse.fromMap((map['updateStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

