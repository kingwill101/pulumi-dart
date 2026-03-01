// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_status_enum_value_response.dart';

/// Definition of ServiceSoftwareOptions
class ServiceSoftwareOptionsResponse {
  /// <p>The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>
  final String? automatedUpdateDate;
  /// <p> True if you're able to cancel your service software version update. False if you can't cancel your service software update.</p>
  final bool? cancellable;
  /// <p>The current service software version present on the domain.</p>
  final String? currentVersion;
  /// <p>A description of the service software update status.</p>
  final String? description;
  /// <p>The new service software version, if one is available.</p>
  final String? newVersion;
  /// <p>True if a service software is never automatically updated. False if a service software is automatically updated after the automated update date.</p>
  final bool? optionalDeployment;
  /// <p>True if you're able to update your service software version. False if you can't update your service software version.</p>
  final bool? updateAvailable;
  /// <p>The status of your service software update.</p>
  final DeploymentStatusEnumValueResponse? updateStatus;

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
      'updateStatus': ?updateStatus == null ? null : updateStatus!.toMap(),
    };
  }

  factory ServiceSoftwareOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceSoftwareOptionsResponse(
      automatedUpdateDate: map['automatedUpdateDate'] == null ? null : map['automatedUpdateDate'] as String,
      cancellable: map['cancellable'] == null ? null : map['cancellable'] as bool,
      currentVersion: map['currentVersion'] == null ? null : map['currentVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      newVersion: map['newVersion'] == null ? null : map['newVersion'] as String,
      optionalDeployment: map['optionalDeployment'] == null ? null : map['optionalDeployment'] as bool,
      updateAvailable: map['updateAvailable'] == null ? null : map['updateAvailable'] as bool,
      updateStatus: map['updateStatus'] == null ? null : DeploymentStatusEnumValueResponse.fromMap((map['updateStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

