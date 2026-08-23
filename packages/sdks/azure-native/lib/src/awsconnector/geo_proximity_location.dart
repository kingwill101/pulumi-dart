// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coordinates.dart';

/// Definition of GeoProximityLocation
class GeoProximityLocation {
  /// &lt;p&gt; The Amazon Web Services Region the resource you are directing DNS traffic to, is in. &lt;/p&gt;
  final pulumi.Input<String>? awsRegion;
  /// &lt;p&gt; The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource. &lt;/p&gt; &lt;p&gt;To use &lt;code&gt;Bias&lt;/code&gt; to change the size of the geographic region, specify the applicable value for the bias:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from 1 to 99 for the bias. Route 53 shrinks the size of adjacent regions. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of -1 to -99. Route 53 expands the size of adjacent regions. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<int>? bias;
  /// &lt;p&gt; Contains the longitude and latitude for a geographic region. &lt;/p&gt;
  final pulumi.Input<Coordinates>? coordinates;
  /// &lt;p&gt; Specifies an Amazon Web Services Local Zone Group. &lt;/p&gt; &lt;p&gt;A local Zone Group is usually the Local Zone code without the ending character. For example, if the Local Zone is &lt;code&gt;us-east-1-bue-1a&lt;/code&gt; the Local Zone Group is &lt;code&gt;us-east-1-bue-1&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You can identify the Local Zones Group for a specific Local Zone by using the &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html'&gt;describe-availability-zones&lt;/a&gt; CLI command:&lt;/p&gt; &lt;p&gt;This command returns: &lt;code&gt;'GroupName': 'us-west-2-den-1'&lt;/code&gt;, specifying that the Local Zone &lt;code&gt;us-west-2-den-1a&lt;/code&gt; belongs to the Local Zone Group &lt;code&gt;us-west-2-den-1&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? localZoneGroup;

  /// Creates a new [GeoProximityLocation].
  /// [awsRegion] &lt;p&gt; The Amazon Web Services Region the resource you are directing DNS traffic to, is in. &lt;/p&gt;
  /// [bias] &lt;p&gt; The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource. &lt;/p&gt; &lt;p&gt;To use &lt;code&gt;Bias&lt;/code&gt; to change the size of the geographic region, specify the applicable value for the bias:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from 1 to 99 for the bias. Route 53 shrinks the size of adjacent regions. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of -1 to -99. Route 53 expands the size of adjacent regions. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [coordinates] &lt;p&gt; Contains the longitude and latitude for a geographic region. &lt;/p&gt;
  /// [localZoneGroup] &lt;p&gt; Specifies an Amazon Web Services Local Zone Group. &lt;/p&gt; &lt;p&gt;A local Zone Group is usually the Local Zone code without the ending character. For example, if the Local Zone is &lt;code&gt;us-east-1-bue-1a&lt;/code&gt; the Local Zone Group is &lt;code&gt;us-east-1-bue-1&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You can identify the Local Zones Group for a specific Local Zone by using the &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html'&gt;describe-availability-zones&lt;/a&gt; CLI command:&lt;/p&gt; &lt;p&gt;This command returns: &lt;code&gt;'GroupName': 'us-west-2-den-1'&lt;/code&gt;, specifying that the Local Zone &lt;code&gt;us-west-2-den-1a&lt;/code&gt; belongs to the Local Zone Group &lt;code&gt;us-west-2-den-1&lt;/code&gt;.&lt;/p&gt;
  const GeoProximityLocation({
    this.awsRegion,
    this.bias,
    this.coordinates,
    this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'bias': ?bias,
      'coordinates': ?pulumi.Input.mapOptionalInputValue<Coordinates, Map<String, dynamic>>(coordinates, (value) => value.toMap()),
      'localZoneGroup': ?localZoneGroup,
    };
  }

  factory GeoProximityLocation.fromMap(Map<String, dynamic> map) {
    return GeoProximityLocation(
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bias: (() { final guardedValue = map['bias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coordinates: (() { final guardedValue = map['coordinates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Coordinates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localZoneGroup: (() { final guardedValue = map['localZoneGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
