// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'application_info.dart';
import 'compensation_info.dart';
import 'job_degree_types_item.dart';
import 'job_employment_types_item.dart';
import 'job_job_benefits_item.dart';
import 'job_job_level.dart';
import 'job_posting_region.dart';
import 'job_visibility.dart';
import 'processing_options.dart';

/// The set of arguments for Job.
class JobArgs8 {
  /// Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  final Input<List<String>>? addresses;

  /// At least one field within ApplicationInfo must be specified. Job application information.
  final Input<ApplicationInfo> applicationInfo;

  /// The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  final Input<String> companyName;

  /// Optional. Job compensation information.
  final Input<CompensationInfo>? compensationInfo;

  /// Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  final Input<Map<String, String>>? customAttributes;

  /// Optional. The desired education degrees for the job, such as Bachelors, Masters.
  final Input<List<JobDegreeTypesItem>>? degreeTypes;

  /// Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  final Input<String>? department;

  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  final Input<String> description;

  /// Optional. The employment type(s) of a job, for example, full time or part time.
  final Input<List<JobEmploymentTypesItem>>? employmentTypes;

  /// Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  final Input<String>? incentives;

  /// Optional. The benefits included with the job.
  final Input<List<JobJobBenefitsItem>>? jobBenefits;

  /// Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final Input<String>? jobEndTime;

  /// Optional. The experience level associated with the job, such as "Entry Level".
  final Input<JobJobLevel>? jobLevel;

  /// Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final Input<String>? jobStartTime;

  /// Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  final Input<String>? languageCode;

  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  final Input<String>? name;

  /// Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  final Input<String>? postingExpireTime;

  /// Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  final Input<String>? postingPublishTime;

  /// Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  final Input<JobPostingRegion>? postingRegion;

  /// Optional. Options for job processing.
  final Input<ProcessingOptions>? processingOptions;
  final Input<String>? project;

  /// Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  final Input<int>? promotionValue;

  /// Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final Input<String>? qualifications;

  /// The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  final Input<String> requisitionId;

  /// Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final Input<String>? responsibilities;

  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  final Input<String> title;

  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  final Input<JobVisibility>? visibility;

  JobArgs8({
    this.addresses,
    required this.applicationInfo,
    required this.companyName,
    this.compensationInfo,
    this.customAttributes,
    this.degreeTypes,
    this.department,
    required this.description,
    this.employmentTypes,
    this.incentives,
    this.jobBenefits,
    this.jobEndTime,
    this.jobLevel,
    this.jobStartTime,
    this.languageCode,
    this.name,
    this.postingExpireTime,
    this.postingPublishTime,
    this.postingRegion,
    this.processingOptions,
    this.project,
    this.promotionValue,
    this.qualifications,
    required this.requisitionId,
    this.responsibilities,
    required this.title,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    map['applicationInfo'] =
        Input.mapInputValue<ApplicationInfo, Map<String, dynamic>>(
            applicationInfo, (value) => value.toMap());
    map['companyName'] = companyName;
    final compensationInfoValue = compensationInfo;
    if (compensationInfoValue != null) {
      map['compensationInfo'] =
          Input.mapOptionalInputValue<CompensationInfo, Map<String, dynamic>>(
              compensationInfoValue, (value) => value.toMap());
    }
    final customAttributesValue = customAttributes;
    if (customAttributesValue != null) {
      map['customAttributes'] = customAttributesValue;
    }
    final degreeTypesValue = degreeTypes;
    if (degreeTypesValue != null) {
      map['degreeTypes'] =
          Input.mapOptionalInputValue<List<JobDegreeTypesItem>, List<String>>(
              degreeTypesValue,
              (value) => Input.encodeList<JobDegreeTypesItem, String>(
                  value, (value) => value.value));
    }
    final departmentValue = department;
    if (departmentValue != null) {
      map['department'] = departmentValue;
    }
    map['description'] = description;
    final employmentTypesValue = employmentTypes;
    if (employmentTypesValue != null) {
      map['employmentTypes'] = Input.mapOptionalInputValue<
              List<JobEmploymentTypesItem>, List<String>>(
          employmentTypesValue,
          (value) => Input.encodeList<JobEmploymentTypesItem, String>(
              value, (value) => value.value));
    }
    final incentivesValue = incentives;
    if (incentivesValue != null) {
      map['incentives'] = incentivesValue;
    }
    final jobBenefitsValue = jobBenefits;
    if (jobBenefitsValue != null) {
      map['jobBenefits'] =
          Input.mapOptionalInputValue<List<JobJobBenefitsItem>, List<String>>(
              jobBenefitsValue,
              (value) => Input.encodeList<JobJobBenefitsItem, String>(
                  value, (value) => value.value));
    }
    final jobEndTimeValue = jobEndTime;
    if (jobEndTimeValue != null) {
      map['jobEndTime'] = jobEndTimeValue;
    }
    final jobLevelValue = jobLevel;
    if (jobLevelValue != null) {
      map['jobLevel'] = Input.mapOptionalInputValue<JobJobLevel, String>(
          jobLevelValue, (value) => value.value);
    }
    final jobStartTimeValue = jobStartTime;
    if (jobStartTimeValue != null) {
      map['jobStartTime'] = jobStartTimeValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final postingExpireTimeValue = postingExpireTime;
    if (postingExpireTimeValue != null) {
      map['postingExpireTime'] = postingExpireTimeValue;
    }
    final postingPublishTimeValue = postingPublishTime;
    if (postingPublishTimeValue != null) {
      map['postingPublishTime'] = postingPublishTimeValue;
    }
    final postingRegionValue = postingRegion;
    if (postingRegionValue != null) {
      map['postingRegion'] =
          Input.mapOptionalInputValue<JobPostingRegion, String>(
              postingRegionValue, (value) => value.value);
    }
    final processingOptionsValue = processingOptions;
    if (processingOptionsValue != null) {
      map['processingOptions'] =
          Input.mapOptionalInputValue<ProcessingOptions, Map<String, dynamic>>(
              processingOptionsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final promotionValueValue = promotionValue;
    if (promotionValueValue != null) {
      map['promotionValue'] = promotionValueValue;
    }
    final qualificationsValue = qualifications;
    if (qualificationsValue != null) {
      map['qualifications'] = qualificationsValue;
    }
    map['requisitionId'] = requisitionId;
    final responsibilitiesValue = responsibilities;
    if (responsibilitiesValue != null) {
      map['responsibilities'] = responsibilitiesValue;
    }
    map['title'] = title;
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = Input.mapOptionalInputValue<JobVisibility, String>(
          visibilityValue, (value) => value.value);
    }
    return map;
  }

  factory JobArgs8.fromMap(Map<String, dynamic> map) {
    return JobArgs8(
      addresses: Input.asOptionalInput<List<String>>(map['addresses']),
      applicationInfo: Input.asInput<ApplicationInfo>(map['applicationInfo']),
      companyName: Input.asInput<String>(map['companyName']),
      compensationInfo:
          Input.asOptionalInput<CompensationInfo>(map['compensationInfo']),
      customAttributes:
          Input.asOptionalInput<Map<String, String>>(map['customAttributes']),
      degreeTypes:
          Input.asOptionalInput<List<JobDegreeTypesItem>>(map['degreeTypes']),
      department: Input.asOptionalInput<String>(map['department']),
      description: Input.asInput<String>(map['description']),
      employmentTypes: Input.asOptionalInput<List<JobEmploymentTypesItem>>(
          map['employmentTypes']),
      incentives: Input.asOptionalInput<String>(map['incentives']),
      jobBenefits:
          Input.asOptionalInput<List<JobJobBenefitsItem>>(map['jobBenefits']),
      jobEndTime: Input.asOptionalInput<String>(map['jobEndTime']),
      jobLevel: Input.asOptionalInput<JobJobLevel>(map['jobLevel']),
      jobStartTime: Input.asOptionalInput<String>(map['jobStartTime']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      name: Input.asOptionalInput<String>(map['name']),
      postingExpireTime:
          Input.asOptionalInput<String>(map['postingExpireTime']),
      postingPublishTime:
          Input.asOptionalInput<String>(map['postingPublishTime']),
      postingRegion:
          Input.asOptionalInput<JobPostingRegion>(map['postingRegion']),
      processingOptions:
          Input.asOptionalInput<ProcessingOptions>(map['processingOptions']),
      project: Input.asOptionalInput<String>(map['project']),
      promotionValue: Input.asOptionalInput<int>(map['promotionValue']),
      qualifications: Input.asOptionalInput<String>(map['qualifications']),
      requisitionId: Input.asInput<String>(map['requisitionId']),
      responsibilities: Input.asOptionalInput<String>(map['responsibilities']),
      title: Input.asInput<String>(map['title']),
      visibility: Input.asOptionalInput<JobVisibility>(map['visibility']),
    );
  }
}
