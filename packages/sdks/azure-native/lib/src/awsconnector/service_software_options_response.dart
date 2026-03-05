// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_status_enum_value_response.dart';

/// Definition of ServiceSoftwareOptions
class ServiceSoftwareOptionsResponse {
  /// &lt;p&gt;The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.&lt;/p&gt;
  final pulumi.Input<String>? automatedUpdateDate;
  /// &lt;p&gt; True if you're able to cancel your service software version update. False if you can't cancel your service software update.&lt;/p&gt;
  final pulumi.Input<bool>? cancellable;
  /// &lt;p&gt;The current service software version present on the domain.&lt;/p&gt;
  final pulumi.Input<String>? currentVersion;
  /// &lt;p&gt;A description of the service software update status.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The new service software version, if one is available.&lt;/p&gt;
  final pulumi.Input<String>? newVersion;
  /// &lt;p&gt;True if a service software is never automatically updated. False if a service software is automatically updated after the automated update date.&lt;/p&gt;
  final pulumi.Input<bool>? optionalDeployment;
  /// &lt;p&gt;True if you're able to update your service software version. False if you can't update your service software version.&lt;/p&gt;
  final pulumi.Input<bool>? updateAvailable;
  /// &lt;p&gt;The status of your service software update.&lt;/p&gt;
  final pulumi.Input<DeploymentStatusEnumValueResponse>? updateStatus;

  /// Creates a new [ServiceSoftwareOptionsResponse].
  /// [automatedUpdateDate] &lt;p&gt;The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.&lt;/p&gt;
  /// [cancellable] &lt;p&gt; True if you're able to cancel your service software version update. False if you can't cancel your service software update.&lt;/p&gt;
  /// [currentVersion] &lt;p&gt;The current service software version present on the domain.&lt;/p&gt;
  /// [description] &lt;p&gt;A description of the service software update status.&lt;/p&gt;
  /// [newVersion] &lt;p&gt;The new service software version, if one is available.&lt;/p&gt;
  /// [optionalDeployment] &lt;p&gt;True if a service software is never automatically updated. False if a service software is automatically updated after the automated update date.&lt;/p&gt;
  /// [updateAvailable] &lt;p&gt;True if you're able to update your service software version. False if you can't update your service software version.&lt;/p&gt;
  /// [updateStatus] &lt;p&gt;The status of your service software update.&lt;/p&gt;
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
      automatedUpdateDate: (() { final guardedValue = map['automatedUpdateDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cancellable: (() { final guardedValue = map['cancellable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newVersion: (() { final guardedValue = map['newVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalDeployment: (() { final guardedValue = map['optionalDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateAvailable: (() { final guardedValue = map['updateAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateStatus: (() { final guardedValue = map['updateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

